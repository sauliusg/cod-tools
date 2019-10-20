#------------------------------------------------------------------------------
#$Author$
#$Date$ 
#$Revision$
#$URL$
#------------------------------------------------------------------------------
#*

# A Perl object to build all spacegroup operators and spacegroup
# description from symmetry operators supplied as a generator list.

# This module, the GenericBuilder, implements a "black-box" algorithm
# mentioned in [1].

# [1] Groupprops, The Group Properties Wiki (beta). Black-box group
# algorithm for finding the subgroup generated by a
# subset. https://groupprops.subwiki.org/wiki/Black-box_group_algorithm_for_finding_the_subgroup_generated_by_a_subset
# [retrieved 2019-10-20].

#**

package COD::Spacegroups::GenericBuilder;

use strict;
use warnings;
use COD::Algebra::Vector qw( vector_sub vector_add vector_modulo_1
                             vector_is_zero vectors_are_equal round_vector );
use COD::Spacegroups::Symop::Parse qw( 
    symop_from_string string_from_symop symop_string_canonical_form
);
use COD::Spacegroups::Symop::Algebra qw(
    symop_mul symop_modulo_1 symop_translate symop_translation
    symop_set_translation symop_is_inversion symops_are_equal
    flush_zeros_in_symop symop_is_translation symop_is_unity
    symop_invert
);

my $debug = 0;

use fields qw(
    symops
);

my $unity_symop = [
    [ 1, 0, 0, 0 ],
    [ 0, 1, 0, 0 ],
    [ 0, 0, 1, 0 ],
    [ 0, 0, 0, 1 ],
];

my $inversion_symop = [
    [-1, 0, 0, 0 ],
    [ 0,-1, 0, 0 ],
    [ 0, 0,-1, 0 ],
    [ 0, 0, 0, 1 ],
];

sub debug
{
    my ($debug_flag) = @_;
    $debug = ($debug_flag? 1:0);
}

sub new { 
    my ($self) = @_;

    $self = fields::new($self) unless (ref $self);
    $self->{symops} = [ $unity_symop ];
    my $symop_key = string_from_symop( $unity_symop );
    return $self;
}

sub print
{
    my ($self, $fd) = @_;

    $fd = \*STDOUT unless defined $fd;
    
    print $fd "nsymops:   ", int(@{$self->all_symops()}), "\n";
    print $fd "symops:\n";
    for my $symop (@{$self->all_symops()}) {
        print $fd "    ", string_from_symop( $symop ), "\n"
    }
    print $fd "\n";
}

sub snap_number_to_crystallographic
{
    my ($value, $eps) = @_;

    $eps = 1E-6 unless defined $eps;

    if( abs($value) < $eps ) {
        return 0.0;
    }
    if( abs($value - 1) < $eps ) {
        return 1.0;
    }
    if( abs($value - 1/2) < $eps ) {
        return 1/2;
    }
    if( abs($value - 1/3) < $eps ) {
        return 1/3;
    }
    if( abs($value - 2/3) < $eps ) {
        return 2/3;
    }
    if( abs($value - 1/4) < $eps ) {
        return 1/4;
    }
    if( abs($value - 3/4) < $eps ) {
        return 3/4;
    }
    if( abs($value - 1/6) < $eps ) {
        return 1/6;
    }
    if( abs($value - 5/6) < $eps ) {
        return 5/6;
    }
    if( abs($value - 1.0) < $eps ) {
        return 1;
    }

    return $value;
}

sub snap_to_crystallographic
{
    my ($vector) = @_;

    for(@$vector) {
        if( ref $_ ) {
            snap_to_crystallographic( $_ );
        } else {
            $_ = snap_number_to_crystallographic( $_ );
        }
    }
    return $vector;
}

sub all_symops
{
    my ($self) = @_;

    return wantarray ? @{$self->{symops}} : $self->{symops};
}

sub all_symops_ref
{
    my ($self) = @_;
    my @symops = $self->all_symops();
    return \@symops;
}

sub insert_symop
    # N.B. This function has *quadratic* performance and thus is not
    # suitable for practical use on large spacegroups.
{
    my ($self, $symop) = @_;

    $symop = snap_to_crystallographic(symop_modulo_1( $symop ));

    if( $self->has_symop( $symop ) ) {
        return;
    }

    $self->insert_symops( [ $symop ] );
}

sub insert_symops
{
    my ($self, $symops) = @_;

    my @symops = map {
         snap_to_crystallographic(symop_modulo_1( $_ ))
    } @$symops;

    # The generator set is comprised of all existing symmetry
    # operators and from all new operators that were supplied. The
    # unit operator is excluded since it will be added to the H_{i}
    # list at the very beginning:
    my @generator_symops = ( @{$self->{symops}}, @symops );
    die unless symop_is_unity( $generator_symops[0] );
    shift( @generator_symops );

    # Add inverses to the generator set:
    @generator_symops = (
        @generator_symops,
        map { symop_invert($_) } @generator_symops
    );

    # Make sure generators do not contain duplicates:
    my %generators = map {(string_from_symop($_), $_)} @generator_symops;
    # Sort the keys (by default, alphabetically) to make the algorithm
    # deterministic for easier debugging and testing:
    my @generator_keys = sort keys %generators;
    my @generators = map { $generators{$_} } @generator_keys;
    
    do {
        local $\ = "\n";
        local $" = "; ";
        if( @generators ) {
            print STDERR ">>> generators == @generator_keys";
        }
    } if $debug or 1;

    @{$self->{symops}} = (); # $H_{i-1}$

    my (@F1, @F2); # The $F_{i-1} \textrm{and} F_{i-2}$ in [1].
    my (%F1, %F2); # Has tables for faster symop lookup

    @F1 = ($unity_symop);
    %F1 = map { (string_from_symop($_), $_) } @F1;
    my %H = %F1;
    do {
        for my $f (@F1) {
            my @K; # The $K$ in [1].
            my %K; # Hash table for faster lookup in @K
            for my $s (@generators) {
                my $product =
                    snap_to_crystallographic(
                        symop_modulo_1(
                            symop_mul( $f, $s )
                        )
                    );
                my $product_key = string_from_symop( $product );
                if( ! exists $K{$product_key} &&
                    ! exists $H{$product_key} &&
                    ! exists $F1{$product_key} &&
                    ! exists $F2{$product_key} ) {
                    $K{$product_key} = $product;
                    $H{$product_key} = $product;
                    push( @K, $product );
                    print( STDERR ">>>> pushing ", 
                           string_from_symop($product), " == ",
                           string_from_symop($f), " * ",
                           string_from_symop($s),
                           " to K\n"
                        ) if $debug or 1;
                }
            }
            do {
                local $\ = "\n";
                local $" = "; ";
                if( @F1 ) {
                    my @F1_keys = sort keys %F1;
                    print STDERR ">>> F1 == @F1_keys";
                    my @F2_keys = sort keys %F2;
                    print STDERR ">>> F2 == @F2_keys";
                    my @K_keys = sort keys %K;
                    print STDERR ">>> K == @K_keys";
                    my @symop_strings = map { string_from_symop($_) }
                        @{$self->{symops}};
                    print STDERR ">>> symops == @symop_strings\n";
                }
            } if $debug or 1;
            @{$self->{symops}} = ( @{$self->{symops}}, @F1 );
            @F2 = @F1;
            %F2 = %F1;
            @F1 = @K;
            %F1 = %K;
        }
    } while( @F1 );
}

sub has_symop
{
    my ($self, $symop) = @_;

    for my $s (@{$self->{symops}}) {
        if( symops_are_equal( $s, $symop )) {
            return $s;
        }
    }
    return undef;
}

sub insert_symop_string
{
    my ($self, $symop_string) = @_;

    my $symop = symop_from_string( $symop_string );
    $self->insert_symop( $symop );
}

sub insert_symop_strings
{
    my ($self, $strings) = @_;

    for my $symop_string (@$strings) {
        $self->insert_symop_string( $symop_string );
    }
}

1;
