 #------------------------------------------------------------------------------
#$Author$
#$Date$ 
#$Revision$
#$URL$
#------------------------------------------------------------------------------
#*
#  Construct a common data structure, representing list of atoms in
#  a CIF file.
#**

package COD::CIF::Data::AtomList;

use strict;
use warnings;
use Clone qw( clone );
use COD::Algebra::Vector qw( modulo_1 );
use COD::AtomProperties;
use COD::CIF::Data qw( get_cell );
use COD::CIF::Tags::Manage qw( new_datablock set_loop_tag );
use COD::Spacegroups::Symop::Algebra qw( symop_invert symop_mul
                                         symop_vector_mul );
use COD::Spacegroups::Symop::Parse qw( string_from_symop
                                       symop_from_string
                                       symop_string_canonical_form );
use COD::Fractional qw( symop_ortho_from_fract );

require Exporter;
our @ISA = qw( Exporter );
our @EXPORT_OK = qw(
    assemblies
    atom_array_from_cif
    atom_groups
    atom_is_disordered
    atoms_are_alternative
    copy_atom
    datablock_from_atom_array
    dump_atoms_as_cif
    uniquify_atom_names
    extract_atom
);

my @shallow_copied_keys = qw( symop_list f2o site_symops symop );
my %shallow_copied_keys = map { $_ => 1 } @shallow_copied_keys;

#===============================================================#
# Extracts atom information from the CIF file.
#
# Accepts
#     atom_label - atom site label or atom site type symbol from the CIF file
#     values     - a hash where a data from the CIF file is stored
#     number     - a number of the current atom
#     f2o        - conversion matrix from fractional to Cartesian coordinates
#     options    - a hash with control options
#
# Accepted control options:
#       atom_properties
#                           A reference to a hash that contains various
#                           properties (weight, bond length, etc.) of chemical
#                           elements. Used to check if the resolved chemical
#                           type is a valid one. %COD::AtomProperties::atoms
#                           is used by default.
#       allow_unknown_chemical_types
#                           Include atoms for which a recognisible chemical
#                           type could not be resolved. If this option is
#                           disabled, a die signal is issued upon encountering
#                           such atoms. The option if off by default.
#       assume_full_occupancy
#                           Set atom occupancy to '1' for all atoms that do
#                           not have an explicitely declared occupancy.
#       remove_precision
#                           Remove standard uncertainty values from
#                           atom_site_occupancy and atom_site_U_iso_or_equiv
#                           tag values.
#       modulo_1
#                           Apply modulo 1 operation on fractional coordinates
#                           to position the atom in the '555' octant.
#       symop_list
#                           A reference to a symop list value that should be
#                           set to the 'symop_list' property.
#       concat_refinement_flags
#                           Store the values of refinement_flags,
#                           refinement_flags_posn, refinement_flags_adp and
#                           refinement_flags_occupancy tags as a single
#                           concatenated value of the 'refinement_flags'
#                           field.
#       use_cod_molecule_tags
#                           Set atom tags that are generated by the
#                           cod_molecule script.
#
# Returns a hash $atom:{
#                       label=>'C1',
#                       site_label=>'C1';
#                       chemical_type=>'C',
#                       atom_site_type_symbol = 'C',
#                       coordinates_fract=>[1.0, 1.0, 1.0],
#                       unity_matrix_applied=>1,
#                       transform_matrices=>[ [
#                           [ 1, 0, 0, 0 ],
#                           [ 0, 1, 0, 0 ],
#                           [ 0, 0, 1, 0 ],
#                           [ 0, 0, 0, 1 ] ] ],
#                       assembly=>"A", # "."
#                       group=>"1", # "."
#                       }

sub extract_atom
{
    my($atom_label, $values, $number, $f2o, $options) = @_;

    $options = {} unless $options;
    if ( !defined $options->{atom_properties} ) {
        $options->{atom_properties} = \%COD::AtomProperties::atoms;
    };

    my %atom_info;
    my @atom_xyz;

    foreach ( qw( _atom_site_fract_x
                  _atom_site_fract_y
                  _atom_site_fract_z ) ) {
        push ( @atom_xyz, $values->{$_}[$number] );
        $atom_xyz[-1] =~ s/[(]\d+[)]$//;
    }

    if( $options->{modulo_1} ) {
        @atom_xyz = map { modulo_1($_) } @atom_xyz;
    }

    $atom_info{"coordinates_fract"}     = \@atom_xyz;
    $atom_info{"name"}                  = $atom_label;
    $atom_info{"site_label"}            = $atom_label;
    $atom_info{"cell_label"}            = $atom_label;
    $atom_info{"index"}                 = $number;
    $atom_info{"symop"}                 =
      [
        [ 1, 0, 0, 0 ],
        [ 0, 1, 0, 0 ],
        [ 0, 0, 1, 0 ],
        [ 0, 0, 0, 1 ]
      ];
    $atom_info{"symop_id"}              = 1;
    $atom_info{"unity_matrix_applied"}  = 1;
    $atom_info{"translation_id"}        = "555";
    $atom_info{"translation"}           = [ 0, 0, 0 ];
    if( $options->{symop_list} ) {
        $atom_info{"symop_list"} = $options->{symop_list};
    }

    $atom_info{f2o} = $f2o;
    if( $atom_xyz[0] eq '.' ||
        $atom_xyz[1] eq '.' ||
        $atom_xyz[2] eq '.' ) {
        $atom_info{coordinates_ortho} = [ '.', '.', '.' ];
    } elsif( $atom_xyz[0] eq '?' ||
             $atom_xyz[1] eq '?' ||
             $atom_xyz[2] eq '?' ) {
        $atom_info{coordinates_ortho} = [ '?', '?', '?' ];
    } else {
        $atom_info{coordinates_ortho} =
            symop_vector_mul( $f2o, \@atom_xyz );
    }

    my $atom_type;
    my $atom_properties = $options->{atom_properties};
    if( exists $values->{_atom_site_type_symbol} &&
        defined $values->{_atom_site_type_symbol}[$number] &&
        $values->{_atom_site_type_symbol}[$number] ne '?' ) {
        $atom_type = $values->{_atom_site_type_symbol}[$number];
        $atom_info{atom_site_type_symbol} = $atom_type;
    } elsif ( exists $values->{_atom_site_label} &&
              defined $values->{_atom_site_label}[$number] ) {
        $atom_type = $values->{_atom_site_label}[$number];
    };

    if ( defined $atom_type &&
         $atom_type =~ m/^([A-Za-z]{1,2})/ ) {
        $atom_type = ucfirst( lc( $1 ) );
    };

    if ( !( exists $atom_properties->{$atom_type} ||
            $options->{allow_unknown_chemical_types} ) ) {
        die 'ERROR, could not determine chemical type for atom '
          . "'$values->{_atom_site_label}[$number]'\n";
    }

    $atom_info{chemical_type} = $atom_type;
    $atom_info{assembly} = ".";
    $atom_info{group}    = ".";

    my %to_copy_atom_site = (
        _atom_site_disorder_assembly     => 'assembly',
        _atom_site_disorder_group        => 'group',
        _atom_site_occupancy             => 'atom_site_occupancy',
        _atom_site_U_iso_or_equiv        => 'atom_site_U_iso_or_equiv',
        _atom_site_symmetry_multiplicity => 'multiplicity',
        _atom_site_attached_hydrogens    => 'attached_hydrogens',
        _atom_site_refinement_flags      => 'refinement_flags',
        _atom_site_refinement_posn       => 'refinement_flags_position',
        _atom_site_refinement_adp        => 'refinement_flags_adp',
        _atom_site_refinement_occupancy  => 'refinement_flags_occupancy',
        _atom_site_calc_flag             => 'calc_flag',
    );

    for my $tag (keys %to_copy_atom_site) {
        next if !exists $values->{$tag};
        $atom_info{$to_copy_atom_site{$tag}} = $values->{$tag}[$number];
    }

    # Take _atom_site_symmetry_multiplicity (if not '.' or '?')
    if( exists $values->{_atom_site_symmetry_multiplicity} &&
        $values->{_atom_site_symmetry_multiplicity}[$number] ne '?' &&
        $values->{_atom_site_symmetry_multiplicity}[$number] ne '.' ) {
        $atom_info{_atom_site_symmetry_multiplicity} =
            $values->{_atom_site_symmetry_multiplicity}[$number];
    }

    if( $options->{remove_precision} ) {
        for my $key (qw( atom_site_occupancy atom_site_U_iso_or_equiv )) {
            next if !exists $atom_info{$key};
            $atom_info{$key} =~ s/\([0-9]+\)$//;
        }
    }

    if( $options->{concat_refinement_flags} ) {
        my %refinement_flags;
        for my $key (qw( refinement_flags
                         refinement_flags_posn
                         refinement_flags_adp
                         refinement_flags_occupancy )) {
            next if !exists $atom_info{$key};
            next if $atom_info{$key} eq '?' || $atom_info{$key} eq '.';
            map { $refinement_flags{$_} = 1 }
                split '', $atom_info{$key};
            delete $atom_info{$key};
        }
        if( %refinement_flags ) {
            $atom_info{refinement_flags} =
                join( '', sort keys %refinement_flags );
        }
    }

    if( !exists $atom_info{atom_site_occupancy} &&
        $options->{assume_full_occupancy} ) {
        $atom_info{atom_site_occupancy} = 1;
    }

    return \%atom_info;
}

#===============================================================#
# Performs several checks on values at the given index position
# to determine is the they are suitable for constructing an atom structure.
#
# Accepts:
#   values
#           Reference to the 'values' field of the parsed CIF structure.
#   number
#           Atom number (index) in the 'values' structure.
#   criteria
#           Reference to a hash with criteria options.
#
# Accepted options are:
#       has_zero_occupancies
#               Check if the atom has unknown ('?'), not applicable ('.')
#               or zero (0.0) occupancy.
#       has_dummy_flag
#               Check if the atom is a dummy atom (has the
#               _atom_site_calc_flag value 'dum'.
#       has_unknown_coordinates
#               Check at least one component of the fractional coordinates
#               is unknown ('?').
#       has_dummy_coordinates
#               Check at least one component of the fractional coordinates
#               is unknown ('.').
#
# Returns:
#   0 if the values at the given index did not satisfy any of the criteria,
#   1 otherwise.
##
sub is_atom_excludable
{
    my ( $values, $number, $criteria ) = @_;

    # Check for zero occupancies
    if( $criteria->{'has_zero_occupancies'} &&
        defined $values->{'_atom_site_occupancy'} ) {
        my $occupancy = $values->{'_atom_site_occupancy'}[$number];
        $occupancy =~ s/[(]\d+[)]$//; # remove precision
        if( $occupancy eq '?' || $occupancy eq '.' || $occupancy == 0.0 ) {
            return 1;
        }
    }

    # Check for dummy atoms
    if( $criteria->{'has_dummy_flag'} &&
        defined $values->{'_atom_site_calc_flag'} ) {
        if ( $values->{'_atom_site_calc_flag'}[$number] eq 'dum' ) {
            return 1;
        }
    }

    # Check for unknown coordinates
    if( $criteria->{'has_unknown_coordinates'} ) {
        foreach ( qw( _atom_site_fract_x
                      _atom_site_fract_y
                      _atom_site_fract_z ) ) {
            if( $values->{$_}[$number] eq '?' ) {
                return 1;
            }
        }
    }

    if( $criteria->{'has_dummy_coordinates'} ) {
        foreach ( qw( _atom_site_fract_x
                      _atom_site_fract_y
                      _atom_site_fract_z ) ) {
            if( $values->{$_}[$number] eq '.' ) {
                return 1;
            }
        }
    }

    return 0;
}

# ============================================================================ #
# Gets atom descriptions, as used in this program, from a CIF data block.
#
# Returns an array of
#
#   $atom_info = {
#                   site_label=>"C1",
#                   name=>"C1_2",
#                   chemical_type=>"C",
#                   atom_site_type_symbol = "C",
#                   coordinates_fract=>[1.0, 1.0, 1.0],
#                   unity_matrix_applied=>1,
#                   assembly=>"A", # "."
#                   group=>"1", # "."
#                   multiplicity=>"1",
#                   multiplicity_ratio=>"1",
#              }
#
sub atom_array_from_cif($$)
{
    my( $datablock, $options ) = @_;

    $options = {} unless $options;

    my $values = $datablock->{values};

    # Get the unit cell information and construct the fract->ortho and
    # ortho->fract conversion matrices:

    my @cell = get_cell( $values );
    my $f2o = symop_ortho_from_fract( @cell );

    if( $options->{homogenize_transform_matrices} ) {
        push( @{$f2o->[0]}, 0 );
        push( @{$f2o->[1]}, 0 );
        push( @{$f2o->[2]}, 0 );
        push( @$f2o, [0,0,0,1] );
    }

    # Determine which atom site label data item is present and which can be
    # used for identifying atoms:

    my $atom_site_tag;

    if( exists $values->{'_atom_site_label'} ) {
        $atom_site_tag = '_atom_site_label';
    } elsif( exists $values->{'_atom_site_type_symbol'} ) {
        $atom_site_tag = '_atom_site_type_symbol';
        warn 'WARNING, \'_atom_site_label\' data item was not found -- a '
           . 'serial number will be appended to the \'_atom_site_type_symbol\' '
           . 'data item values to make atom labels' . "\n";
    } else {
        die 'ERROR, neither \'_atom_site_label\' nor '
          . '\'_atom_site_type_symbol\' data item present' . "\n";
    }

    my $atom_labels = $values->{$atom_site_tag};

    my $exclusion_criteria = {
        'has_dummy_flag'          => $options->{'exclude_dummy_atoms'},
        'has_unknown_coordinates' => $options->{'exclude_unknown_coordinates'},
        'has_dummy_coordinates'   => $options->{'exclude_dummy_coordinates'},
        'has_zero_occupancies'    => $options->{'exclude_zero_occupancies'}
    };

    my @atom_list;
    for (my $i = 0; $i < @{$atom_labels}; $i++) {
        # exclude atoms that fit certain criteria (dummy atoms, atoms with
        # unknown coordinates, atoms with zero occupancies, etc.)
        next if ( is_atom_excludable( $values, $i, $exclusion_criteria ) );

        my $label;
        if ( $atom_site_tag eq '_atom_site_type_symbol' ) {
            $label = $values->{$atom_site_tag}[$i] . $i;
        } else {
            $label = $values->{$atom_site_tag}[$i];
        }

        my $atom_info;
        eval {
            $atom_info = extract_atom( $label, $values, $i, $f2o, $options );
        };
        if ($@) {
            $@ =~ s/^[A-Z]+,\s*//;
            chomp($@);
            if ($options->{'continue_on_errors'}) {
                warn "WARNING, $@ -- atom will be excluded\n";
            } else {
                die "ERROR, $@\n";
            }
        };
        # Some of the code used to return undef from extract_atom in case
        # an atom has to be skipped, so this is silently done in order to
        # stay compatible with the code.
        next if !defined $atom_info;

        # Some of _cod_molecule_* tags override tags from _atom_site_* loop,
        # thus former have to be copied AFTER the latter.
        if( $options->{'use_cod_molecule_tags'} ) {
            set_cod_molecule_atom_fields($atom_info, $values);
        }

        push( @atom_list, $atom_info );
    }

    if( $options->{'uniquify_atom_names'} ) {
        return uniquify_atom_names( \@atom_list, $options->{'uniquify_atoms'} );
    } else {
        return \@atom_list;
    }
}

#===============================================================#
# Constructs a CIF data block from atom array data structure.
sub datablock_from_atom_array
{
    my( $atoms ) = @_;

    my $has_disorder = grep { $_->{group} ne '.' ||
                              $_->{assembly} ne '.' } @$atoms;
    my $has_attached_hydrogens = grep { $_->{attached_hydrogens} } @$atoms;

    my %has_key;
    for my $key ( qw( calc_flag
                      refinement_flags
                      refinement_flags_adp
                      refinement_flags_occupancy
                      refinement_flags_position ) ) {
        $has_key{$key} =
            grep { exists $_->{$key} && $_->{$key} ne '.' } @$atoms;
    }

    my $datablock = new_datablock( 'atom_array' );

    set_loop_tag( $datablock, '_atom_site_label', '_atom_site_label',
                  [ map { $_->{name} } @$atoms ] );
    set_loop_tag( $datablock, '_atom_site_fract_x', '_atom_site_label',
                  [ map { $_->{coordinates_fract}[0] } @$atoms ] );
    set_loop_tag( $datablock, '_atom_site_fract_y', '_atom_site_label',
                  [ map { $_->{coordinates_fract}[1] } @$atoms ] );
    set_loop_tag( $datablock, '_atom_site_fract_z', '_atom_site_label',
                  [ map { $_->{coordinates_fract}[2] } @$atoms ] );

    set_loop_tag( $datablock,
                  '_atom_site_disorder_assembly',
                  '_atom_site_label',
                  [ map { $_->{assembly} } @$atoms ] ) if $has_disorder;
    set_loop_tag( $datablock,
                  '_atom_site_disorder_group',
                  '_atom_site_label',
                  [ map { $_->{group} } @$atoms ] ) if $has_disorder;
    set_loop_tag( $datablock,
                  '_atom_site_attached_hydrogens',
                  '_atom_site_label',
                  [ map { $_->{attached_hydrogens} } @$atoms ] )
        if $has_key{attached_hydrogens};
    set_loop_tag( $datablock,
                  '_atom_site_calc_flag',
                  '_atom_site_label',
                  [ map { $_->{calc_flag} } @$atoms ] )
        if $has_key{calc_flag};

    # Set _cod_molecule_* data items
    set_loop_tag( $datablock,
                  '_cod_molecule_atom_label',
                  '_cod_molecule_atom_label',
                  [ map { $_->{name} } @$atoms ] );
    set_loop_tag( $datablock,
                  '_cod_molecule_atom_orig_label',
                  '_cod_molecule_atom_label',
                  [ map { $_->{site_label} } @$atoms ] );
    set_loop_tag( $datablock,
                  '_cod_molecule_atom_symmetry',
                  '_cod_molecule_atom_label',
                  [ map { $_->{symop_id} . '_' .
                          $_->{translation_id} } @$atoms ] );
    set_loop_tag( $datablock,
                  '_cod_molecule_atom_symop_id',
                  '_cod_molecule_atom_label',
                  [ map { $_->{symop_id} } @$atoms ] );
    set_loop_tag( $datablock,
                  '_cod_molecule_atom_symmetry',
                  '_cod_molecule_atom_label',
                  [ map { symop_string_canonical_form(
                            string_from_symop( $_->{symop} ) ) }
                        @$atoms ] );
    set_loop_tag( $datablock,
                  '_cod_molecule_atom_transl_id',
                  '_cod_molecule_atom_label',
                  [ map { $_->{translation_id} } @$atoms ] );
    set_loop_tag( $datablock,
                  '_cod_molecule_atom_transl_x',
                  '_cod_molecule_atom_label',
                  [ map { $_->{translation}[0] } @$atoms ] );
    set_loop_tag( $datablock,
                  '_cod_molecule_atom_transl_y',
                  '_cod_molecule_atom_label',
                  [ map { $_->{translation}[1] } @$atoms ] );
    set_loop_tag( $datablock,
                  '_cod_molecule_atom_transl_z',
                  '_cod_molecule_atom_label',
                  [ map { $_->{translation}[2] } @$atoms ] );
    set_loop_tag( $datablock,
                  '_cod_molecule_atom_mult',
                  '_cod_molecule_atom_label',
                  [ map { $_->{multiplicity} } @$atoms ] );
    set_loop_tag( $datablock,
                  '_cod_molecule_atom_mult_ratio',
                  '_cod_molecule_atom_label',
                  [ map { $_->{multiplicity_ratio} } @$atoms ] );
    set_loop_tag( $datablock,
                  '_cod_molecule_atom_assembly',
                  '_cod_molecule_atom_label',
                  [ map { $_->{assembly} } @$atoms ] ) if $has_disorder;
    set_loop_tag( $datablock,
                  '_cod_molecule_atom_group',
                  '_cod_molecule_atom_label',
                  [ map { $_->{group} } @$atoms ] ) if $has_disorder;

    # Site symops
    if( grep { $_->{site_symops} && @{$_->{site_symops}} > 0 } @$atoms ) {
        my @transform_labels;
        my @transform_symops;
        foreach my $atom ( @$atoms ) {
            foreach my $symop ( @{$atom->{site_symops}} ) {
                push @transform_labels, $atom->{name};
                push @transform_symops, symop_string_canonical_form(
                                            string_from_symop( $symop ) );
            }
        }
        set_loop_tag( $datablock,
                      '_cod_molecule_transform_label',
                      '_cod_molecule_transform_label',
                      \@transform_labels );
        set_loop_tag( $datablock,
                      '_cod_molecule_transform_symop',
                      '_cod_molecule_transform_label',
                      \@transform_symops );
    }

    return $datablock;
}

# ============================================================================ #
# Renames atoms which have identical names by adding a unique suffix to the
# original atom name.
#
# Accepts:
#   $init_atoms
#                   A reference to an array of atom structures, for which
#                   the names should be uniquified. Example of the accepeted
#                   atom structure:
#
#                   $atom_info = {
#                         site_label=>"C1",
#                         name=>"C1_2",
#                         chemical_type=>"C",
#                         coordinates_fract=>[1.0, 1.0, 1.0],
#                         unity_matrix_applied=>1,
#                         assembly=>"A", # "."
#                         group=>"1", # "."
#                   }
#   $uniquify_atom
#                   Flag value denoting whether atoms with identical names
#                   should be renamed. If set to false, warnings about atoms
#                   having identical names are issued, but the atoms themselves
#                   are not renamed.
#
# Returns:
#   \@checked_initial_atoms
#                   A reference to an array of atom structures.
#
#
sub uniquify_atom_names($$)
{
    my ($init_atoms, $uniquify_atoms) = @_;

    my $max_label_suffix = 30000; # Maximum number to be appened to labels 
                                  # when trying to produce unique names.

    my @checked_initial_atoms;

    my %used_labels;
    my %labels_to_be_renamed;

    foreach my $atom (@{$init_atoms})
    {
        my $atom_copy = copy_atom( $atom );
        my $label = $atom->{name};

        push( @checked_initial_atoms, $atom_copy );

        if( ! exists $used_labels{$label} ) {
            $used_labels{$label}{atoms} = [ $atom_copy ];
        } else {
            push( @{$used_labels{$label}{atoms}}, $atom_copy );
            warn "WARNING, atom label '$label' is not unique\n";

            $labels_to_be_renamed{$label} ++;
        }
        $used_labels{$label}{count} ++;
    }

    if( $uniquify_atoms ) {
        foreach my $label (sort keys %labels_to_be_renamed) {
            foreach my $renamed_atom (@{$used_labels{$label}{atoms}}) {
                my $id = 0;
                while( exists $used_labels{$label . "_" .$id} &&
                       $id <= $max_label_suffix ) {
                    $id ++;
                }
                if( $id > $max_label_suffix ) {
                    die "ERROR, could not generate unique atom name for ".
                        "atom '$label', even after $id iterations\n";
                }
                my $new_label = $label . "_" . $id;
                warn "WARNING, renaming atom '$label' to '$new_label'\n";
                $renamed_atom->{name}       = $new_label;
                $renamed_atom->{site_label} = $new_label;
                $used_labels{$new_label}{count} ++;
            }
        }
    }

    return \@checked_initial_atoms;
}

#============================================================================= #
# It's a function where atom groups are made according disorder information.
# If there is only one disorder assembly then all possible atom groups will be
# generated. If there is more than one disorder assembly a subset of all
# available combinations will be generated giving preference to disorder
# groups with higher occupancy and atom count. Higher atom occupancy takes
# precedence over higher atom count. Occupancy of the disorder group is
# considered to be equal to the highest occupancy of any atom in that group.
# The subset generation algorithm can be illustrated with the following example:
#
# There are two disorder assemblies 'A' (3 groups) and 'B' (2 groups) with
# differing occupancies and sizes:
# A = [ { 'name' => 1, 'occupancy' => 0.2, 'size' => 5 },
#       { 'name' => 2, 'occupancy' => 0.6, 'size' => 3 },
#       { 'name' => 3, 'occupancy' => 0.2, 'size' => 6 } ];
# B = [ { 'name' => 1, 'occupancy' => 0.6, 'size' => 2 },
#     [ { 'name' => 2. 'occupancy' => 0.4, 'size' => 3 } ];
#
# Then the following combinations will be returned in the following order:
# (2,1) # Best from A, best from B
# (3,1) # Second best largest occupancy group from A, best from B
# (1,2) # Worst from A, worst from B
#
# Accepts
#   initial_atoms - an array of references to
#   $atom_info = {
#               site_label=>"C1",
#               name=>"C1_2",
#               chemical_type=>"C",
#               coordinates_fract=>[1.0, 1.0, 1.0],
#               unity_matrix_applied=>1,
#               assembly=>"A", # "."
#               group=>"1", # "."
#              }
# Returns
#   groups - an array of references to arrays of references to
#   $atom_info = {
#               site_label=>"C1",
#               name=>"C1_2",
#               chemical_type=>"C",
#               coordinates_fract=>[1.0, 1.0, 1.0],
#               unity_matrix_applied=>1,
#               assembly=>"A", # "."
#               group=>"1", # "."
#              }
# These arrays of references are generated atom groups.

sub atom_groups
{
    my ($initial_atoms) = @_;

    my $assemblies = assemblies($initial_atoms);

    if( 0 ) {
        for my $assembly (keys %$assemblies) {
            print ">>> Assembly: $assembly\n";
            foreach my $group (@{$assemblies->{$assembly}}) {
                print ">>> group: $group ";
            }
            print "\n";
        }
    }

    if((keys %$assemblies) == 0)
    {
        my @one_assembly;
        push(@one_assembly, $initial_atoms);
        return \@one_assembly;
    }

    for my $assembly (sort keys %$assemblies) {
        my %max_group_occupancy;
        my %group_size;
        my @groups = @{$assemblies->{$assembly}};
        for my $group ( @groups ) {

            my $all_occupancies_match = 1;
            foreach my $atom (@$initial_atoms) {
                if ( $atom->{'group'} eq $group &&
                    $atom->{'assembly'} eq $assembly ) {
                    $group_size{$group}++;
                    my $occupancy = ( $atom->{'atom_site_occupancy'} eq '.' ||
                                      $atom->{'atom_site_occupancy'} eq '?' )
                                      ? 0 : $atom->{'atom_site_occupancy'};
                    $occupancy =~ s/[(]\d+[)]$//; # remove precision
                    if ( !defined $max_group_occupancy{$group} ) {
                        $max_group_occupancy{$group} = $occupancy;
                    } elsif ( $max_group_occupancy{$group} < $occupancy ) {
                        $max_group_occupancy{$group} = $occupancy;
                        $all_occupancies_match = 0;
                    }
                }
            }
            if ( !$all_occupancies_match ) {
                warn 'WARNING, not all atoms in disorder assembly ' .
                     "'$assembly' group '$group' have the same occupancy\n";
            }
        }

        my @sorted_indexes = sort {
            $max_group_occupancy{$groups[$a]} <=>
            $max_group_occupancy{$groups[$b]} ||
            $group_size{$groups[$a]} <=> $group_size{$groups[$b]} ||
            $b <=> $a
        } 0..$#groups;

        @groups = @groups[@sorted_indexes];

        $assemblies->{$assembly} = \@groups;
    }

    my @keys = sort { ($a eq ".") ? -1 : ($b eq ".") ? 1 : $a cmp $b }
               keys %$assemblies;
    my @atom_groups;

    if(@keys == 1)
    {
        my $assembly = $keys[0];
        my $groups = $assemblies->{$assembly};

        foreach my $group (@$groups)
        {
            my @tmp_group;
            foreach my $atom (@$initial_atoms)
            {
                if($atom->{group} eq $group && $atom->{assembly} eq $assembly)
                {
                    push(@tmp_group, $atom);
                }
            }
            push(@atom_groups, \@tmp_group);
        }
    }
    else
    {
        my $iteration_number = 0;

        foreach my $assembly (@keys)
        {
            my $groups = $assemblies->{$assembly};
            if($iteration_number < @$groups)
            {
                $iteration_number = @$groups;
            }
        }

        for(my $i = 0; $i < $iteration_number; $i++)
        {
            my @group;
            foreach my $assembly (@keys)
            {
                my $groups = $assemblies->{$assembly};
                my $atom_group;
                if($i < @$groups)
                {
                    $atom_group = $$groups[$i];
                }
                else
                {
                    $atom_group = $$groups[-1];
                }

                foreach my $atom (@$initial_atoms)
                {
                    if($atom->{group} eq $atom_group &&
                                    $atom->{assembly} eq $assembly)
                    {
                        push(@group, $atom);
                    }
                }
            }
            push(@atom_groups, \@group);
        }
    }
    @atom_groups = reverse @atom_groups;

    # Appends those atoms which do not belong to any group or assembly

    my @independent_atoms;
    foreach my $atom (@$initial_atoms)
    {
        if($atom->{group} eq ".")
        {
            push(@independent_atoms, $atom);
        }
    }

    foreach my $group (@atom_groups)
    {
        push(@$group, @independent_atoms);
    }

    return \@atom_groups;
}

# ============================================================================ #
# Returns a hash of all possible assemblies and groups:
# %assemblies = ( A => [1,2,3],
#                 . => [1,2]);

sub assemblies
{
    my ($init_atoms) = @_;

    my %assemblies;

    foreach my $atom (@$init_atoms)
    {
        if(not exists $assemblies{$atom->{assembly}})
        {
            my @groups;
            $assemblies{$atom->{assembly}} = \@groups;
        }
    }

    my @keys = sort { ($a eq ".") ? -1 : ($b eq ".") ? 1 : $a cmp $b }
               keys %assemblies;

    for my $assembly (@keys)
    {
        my %unique_groups;

        foreach my $atom (@$init_atoms)
        {
            if((not exists $unique_groups{$atom->{group}}) &&
               ($assembly eq $atom->{assembly}) &&
               ($atom->{group} ne "."))
            {
                $unique_groups{$atom->{group}} = $atom->{group};
                push(@{$assemblies{$assembly}}, $atom->{group});
            }
        }
    }

    for my $assembly (@keys)
    {
        if(@{$assemblies{$assembly}} == 0)
        {
            delete $assemblies{$assembly};
        }
    }

   return \%assemblies;
}

# ============================================================================ #
# Modifies the atom hash structure to include information generated by
# the 'cif_molecule' script and stored in the '_cod_molecule_*' tags.
#
# Accepts:
#   $atom_info
#                   Reference to the hash containing the atom information.
#   $values
#                   Reference to the 'values' field of the parsed CIF structure.
#
# Returns:
#   This subroutine acts as a procedure and does not return any values.
##
sub set_cod_molecule_atom_fields
{
    my ($atom_info, $values) = @_;

    my $index = $atom_info->{'index'};

    my %to_copy_cod_molecule = (
        '_cod_molecule_atom_orig_label' => 'original_label',
        '_cod_molecule_atom_assembly'   => 'assembly',
        '_cod_molecule_atom_group'      => 'group',
        '_cod_molecule_atom_mult'       => 'multiplicity',
        '_cod_molecule_atom_mult_ratio' => 'multiplicity_ratio',
        '_cod_molecule_atom_symop_id'   => 'symop_id',
        '_cod_molecule_atom_transl_id'  => 'translation_id',
    );

    for my $tag (keys %to_copy_cod_molecule) {
        next if !exists $values->{$tag};
        $atom_info->{$to_copy_cod_molecule{$tag}} = $values->{$tag}[$index];
    }

    my @transform_matrices;
    if( defined $values->{'_cod_molecule_atom_symop_xyz'} ) {
        @transform_matrices = ( $values->{'_cod_molecule_atom_symop_xyz'}[$index] );
    }

    if( defined $values->{'_cod_molecule_transform_label'} &&
        defined $values->{'_cod_molecule_transform_symop'} ) {
        for my $i (0..$#{$values->{'_cod_molecule_transform_label'}}) {
            if( $values->{'_cod_molecule_transform_label'}[$i] ne
                $atom_info->{'site_label'} ) {
                    next
            }
            my $symop = $values->{'_cod_molecule_transform_symop'}[$i];
            if( @transform_matrices ) {
                my $orig_symop = symop_from_string( $transform_matrices[0] );
                my $symop_mat = symop_from_string( $symop );
                my $product = symop_mul( $orig_symop, $symop_mat );
                $symop = string_from_symop( $product );
            }
            push @transform_matrices, $symop;
        }
    }

    if( @transform_matrices ) {
        $atom_info->{'transform_matrix'} = [
            map { symop_from_string( $_ ) } @transform_matrices
        ];
        $atom_info->{'transform_matrix_inv'} = [
            map { symop_invert( $_ ) } @{$atom_info->{transform_matrix}}
        ];
    }

    if( defined $values->{'_cod_molecule_atom_transl_x'} &&
        defined $values->{'_cod_molecule_atom_transl_y'} &&
        defined $values->{'_cod_molecule_atom_transl_z'} ) {
        $atom_info->{'translation'} = [
            $values->{'_cod_molecule_atom_transl_x'}[$index],
            $values->{'_cod_molecule_atom_transl_y'}[$index],
            $values->{'_cod_molecule_atom_transl_z'}[$index],
         ];
     }

    return;
}

#===============================================================#
# Copies atom and returns the same instance of it (different object, same props)

# Accepts a hash $atom_info = {
#                       name=>"C1_2",
#                       site_label=>"C1",
#                       chemical_type=>"C",
#                       coordinates_fract=>[1.0, 1.0, 1.0],
#                       coordinates_ortho=>[5.0, -1.3, 1.7],
#                       transform_matrices=>[ [
#                           [ 1, 0, 0, 0 ],
#                           [ 0, 1, 0, 0 ],
#                           [ 0, 0, 1, 0 ],
#                           [ 0, 0, 0, 1 ] ] ],
#                       unity_matrix_applied=>1,
#                       symop_id=>1
#                       assembly=>"A", # "."
#                       group=>"1", # "."
#                       }

# Returns a hash $new_atom_info = {
#                       name=>"C1_2",
#                       site_label=>"C1",
#                       chemical_type=>"C",
#                       coordinates_fract=>[1.0, 1.0, 1.0],
#                       coordinates_ortho=>[5.0, -1.3, 1.7],
#                       transform_matrices=>[ [
#                           [ 1, 0, 0, 0 ],
#                           [ 0, 1, 0, 0 ],
#                           [ 0, 0, 1, 0 ],
#                           [ 0, 0, 0, 1 ] ] ],
#                       unity_matrix_applied=>1,
#                       symop_id=>1,
#                       assembly=>"A", # "."
#                       group=>"1", # "."
#                       }
sub copy_atom
{
    my($old_atom) = @_;

    if( ref $old_atom ne "HASH" ) {
        use Carp;
        croak;
    }

    my $atom_copy = {};

    for my $key ( keys %$old_atom ) {
        if( exists $shallow_copied_keys{$key} ) {
            $atom_copy->{$key} = $old_atom->{$key};
        } else {
            $atom_copy->{$key} = clone( $old_atom->{$key} );
        }
    }

    return $atom_copy;
}

#===============================================================#
# Returns true if atom is disordered, false otherwise
sub atom_is_disordered($)
{
    my( $atom ) = @_;
    return exists $atom->{assembly} &&
           exists $atom->{group} &&
           $atom->{group} ne '.';
}

#===============================================================#
# Check whether atoms belong to the same disorder assembly and
# are alternative (belong to different groups of same assembly).
sub atoms_are_alternative($$)
{
    my( $atom1, $atom2 ) = @_;
    return atom_is_disordered( $atom1 ) &&
           atom_is_disordered( $atom2 ) &&
           $atom1->{assembly} eq $atom2->{assembly} &&
           $atom1->{group} ne $atom2->{group};
}

sub dump_atoms_as_cif
{
    my ($datablock_name, $atom_list, $cell) = @_;

    local $\ = "\n";

    print "data_", $datablock_name;

    print "_symmetry_space_group_name_H-M ", "'P 1'";
    print "_cell_length_a ", $$cell[0] if defined $$cell[0];
    print "_cell_length_b ", $$cell[1] if defined $$cell[1];
    print "_cell_length_c ", $$cell[2] if defined $$cell[2];

    print "_cell_angle_alpha ", $$cell[3] if defined $$cell[3];
    print "_cell_angle_beta  ", $$cell[4] if defined $$cell[4];
    print "_cell_angle_gamma ", $$cell[5] if defined $$cell[5];

    print "loop_";
    print "_atom_site_label";
    print "_atom_site_fract_x";
    print "_atom_site_fract_y";
    print "_atom_site_fract_z";

    for my $atom (@$atom_list) {
        print
            $atom->{name}, " ",
            $atom->{coordinates_fract}[0], " ",
            $atom->{coordinates_fract}[1], " ",
            $atom->{coordinates_fract}[2];
    }
}

1;
