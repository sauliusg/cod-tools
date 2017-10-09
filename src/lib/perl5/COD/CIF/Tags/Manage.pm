#------------------------------------------------------------------------
#$Author$
#$Date$ 
#$Revision$
#$URL$
#------------------------------------------------------------------------
#* 
#  CIF tag management functions that work on the internal
#  representation of a CIF file returned by the CIFParser module.
#**

package COD::CIF::Tags::Manage;

use strict;
use warnings;

require Exporter;
our @ISA = qw( Exporter );
our @EXPORT_OK = qw(
    clean_cif
    exclude_tag
    tag_is_empty
    tag_is_unknown
    has_unknown_value
    has_inapplicable_value
    has_special_value
    exclude_empty_tags
    exclude_empty_non_loop_tags
    exclude_misspelled_tags
    exclude_unknown_tags
    exclude_unknown_non_loop_tags
    order_tags
    set_tag
    set_loop_tag
    rename_tag
    rename_tags
);

sub rename_tags($$$);

sub exclude_tag
{
    my ($cif, $tag) = @_;

    delete $cif->{values}{$tag};
    delete $cif->{precisions}{$tag};
    delete $cif->{types}{$tag};
    @{$cif->{tags}} =
        grep $_ ne $tag, @{$cif->{tags}};

    if( defined $cif->{inloop}{$tag} ) {
        my $loop_nr = $cif->{inloop}{$tag};
        delete $cif->{inloop}{$tag};
        @{$cif->{loops}[$loop_nr]} =
            grep $_ ne $tag, @{$cif->{loops}[$loop_nr]};
    }
}

sub tag_is_empty
{
    my ($cif, $tag) = @_;
    my $is_empty =1;

    if( exists $cif->{values}{$tag} ) {
        for my $val (@{$cif->{values}{$tag}}) {
            if( defined $val && $val ne "?" && $val ne "." ) {
                $is_empty = 0;
                last;
            }
        }
    }
    return $is_empty;
}

sub exclude_empty_tags
{
    my $cif = $_[0];
    my @empty_tags = ();

    for my $tag (@{$cif->{tags}}) {
        if( tag_is_empty( $cif, $tag )) {
            push( @empty_tags, $tag );
        }
    }
    for my $empty_tag (@empty_tags) {
        exclude_tag( $cif, $empty_tag );
    }
}

sub exclude_empty_non_loop_tags
{
    my $cif = $_[0];
    my @empty_tags = ();

    for my $tag (@{$cif->{tags}}) {
        if( tag_is_empty( $cif, $tag ) &&
            !exists $cif->{inloop}{$tag} ) {
            push( @empty_tags, $tag );
        }
    }
    for my $empty_tag (@empty_tags) {
        exclude_tag( $cif, $empty_tag );
    }
}

sub tag_is_unknown
{
    my ($cif, $tag) = @_;
    my $is_empty =1;

    if( exists $cif->{values}{$tag} ) {
        for my $val (@{$cif->{values}{$tag}}) {
            if( defined $val && $val ne "?" ) {
                $is_empty = 0;
                last;
            }
        }
    }
    return $is_empty;
}

sub exclude_unknown_tags
{
    my $cif = $_[0];
    my @empty_tags = ();

    for my $tag (@{$cif->{tags}}) {
        if( tag_is_unknown( $cif, $tag )) {
            push( @empty_tags, $tag );
        }
    }
    for my $empty_tag (@empty_tags) {
        exclude_tag( $cif, $empty_tag );
    }
}

sub exclude_unknown_non_loop_tags
{
    my $cif = $_[0];
    my @empty_tags = ();

    for my $tag (@{$cif->{tags}}) {
        if( tag_is_unknown( $cif, $tag ) &&
            !exists $cif->{inloop}{$tag} ) {
            push( @empty_tags, $tag );
        }
    }
    for my $empty_tag (@empty_tags) {
        exclude_tag( $cif, $empty_tag );
    }
}

sub exclude_misspelled_tags
{
    my( $cif, $dictionary_tags ) = @_;

    my @misspelled_tags;
    for my $tag (@{$cif->{tags}}) {
        if( !exists $dictionary_tags->{$tag} ) {
            push( @misspelled_tags, $tag );
        }
    }
    my %misspelled_tags = map { $_ => 1 } @misspelled_tags;
    for my $misspelled_tag (@misspelled_tags) {
        next if !exists $cif->{values}{$misspelled_tag};
        if( !exists $cif->{inloop}{$misspelled_tag} ) {
            exclude_tag( $cif, $misspelled_tag );
        } else {
            my $tag_loop_nr = $cif->{inloop}{$misspelled_tag};
            my $all_tags_excluded = 1;
            for my $loop_tag (@{$cif->{loops}[$tag_loop_nr]}) {
                if( !exists $misspelled_tags{$loop_tag} ) {
                    $all_tags_excluded = 0;
                    last;
                }
            }
            next if !$all_tags_excluded;
            for my $loop_tag (@{$cif->{loops}[$tag_loop_nr]}) {
                exclude_tag( $cif, $loop_tag );
            }
        }
    }
}

sub order_tags
{
    my( $cif, $tags_to_print, $loop_tags_to_print,
        $dictionary_tags ) = @_;
    my @new_tag_list;

    # Correct non-loop tags + _publ_author_name

    for my $tag (@$tags_to_print) {
        if(  exists $cif->{values}{$tag} &&
             exists $dictionary_tags->{$tag} &&
           (!exists $cif->{inloop}{$tag} ||
            $tag eq '_publ_author_name') ) {
            push( @new_tag_list, $tag );
        }
    }

    # Misspelled non-loop tags

    for my $tag (@{$cif->{tags}}) {
        if( !exists $dictionary_tags->{$tag} &&
            !exists $cif->{inloop}{$tag} ) {
            push( @new_tag_list, $tag );
        }
    }

    # Correct loop tags

    for my $tag (@$loop_tags_to_print) {
        if( exists $cif->{values}{$tag} &&
            exists $cif->{inloop}{$tag} &&
            $tag ne '_publ_author_name' ) {
            push( @new_tag_list, $tag );
        }
    }

    # Misspelled loop tags

    for my $tag (@{$cif->{tags}}) {
        if( !exists $dictionary_tags->{$tag} &&
             exists $cif->{inloop}{$tag} ) {
            push( @new_tag_list, $tag );
        }
    }

    $cif->{tags} = \@new_tag_list;
}

sub clean_cif
{
    my( $cif, $flags ) = @_;

    my @dictionary_tags;
    my %dictionary_tags = ();

    my ( $exclude_misspelled_tags, $preserve_loop_order ) = ( 0 ) x 2;
    my $keep_tag_order = 0;

    if( $flags && ref $flags eq "HASH" ) {
        $exclude_misspelled_tags = $flags->{exclude_misspelled_tags};
        $preserve_loop_order = $flags->{preserve_loop_order};
        %dictionary_tags = %{$flags->{dictionary_tags}}
            if defined $flags->{dictionary_tags};
        @dictionary_tags = @{$flags->{dictionary_tag_list}}
            if defined $flags->{dictionary_tag_list};
        $keep_tag_order = $flags->{keep_tag_order}
            if defined $flags->{keep_tag_order};
    }

    if( !@dictionary_tags ) {
        @dictionary_tags = sort {$a cmp $b} keys %dictionary_tags;
    }

    my @tags_to_print;
    if( $keep_tag_order ) {
        @tags_to_print = @{$cif->{tags}};
        if( !%dictionary_tags ) {
            %dictionary_tags = map { $_ => 1 } @tags_to_print;
        }
    } else {
        @tags_to_print = @dictionary_tags;
    }

    if( $exclude_misspelled_tags ) {
        my %tags_to_print = map { $_ => 1 } @tags_to_print;
        exclude_misspelled_tags( $cif, \%tags_to_print );
    }

    order_tags( $cif,
                \@tags_to_print,
                $preserve_loop_order
                    ? $cif->{tags} : \@dictionary_tags,
                \%dictionary_tags );
}

sub rename_tag
{
    my ($cif, $old_tag, $new_tag ) = @_;

    return if !exists $cif->{values}{$old_tag};

    $cif->{values}{$new_tag} = $cif->{values}{$old_tag};
    delete $cif->{values}{$old_tag};
    if( exists $cif->{inloop}{$old_tag} ) {
        $cif->{inloop}{$new_tag} = $cif->{inloop}{$old_tag};
        delete $cif->{inloop}{$old_tag};
    }
    for my $i ( 0 .. $#{$cif->{tags}} ) {
        my $tag = $cif->{tags}[$i];
        if( $tag eq $old_tag ) {
            $cif->{tags}[$i] = $new_tag;
        }
    }
    for my $loop ( @{$cif->{loops}} ) {
        for my $i ( 0 .. $#{$loop} ) {
            if( $loop->[$i] eq $old_tag ) {
                $loop->[$i] = $new_tag;
            }
        }
    }
    if( exists $cif->{types}{$old_tag} ) {
        $cif->{types}{$new_tag} =
            $cif->{types}{$old_tag};
        delete $cif->{types}{$old_tag};
    }
    if( exists $cif->{precisions}{$old_tag} ) {
        $cif->{precisions}{$new_tag} =
            $cif->{precisions}{$old_tag};
        delete $cif->{precisions}{$old_tag};
    }
}

#===============================================================#
# Renames CIF data tags so that they are not confused with the
# original ones.

# Accepts a dataset hash produced by COD::CIF::Parser, a list of tags to be
# renamed, and a prefix to be appended

# Returns a hash with renamed data tags

sub rename_tags($$$)
{
    my ( $dataset, $tags2rename, $prefix ) = @_;

    my $values = $dataset->{values};
    my %renamed_tags = ();

    for my $tag (@$tags2rename) {
        if( exists $values->{$tag} &&
            !defined $dataset->{inloop}{$tag} ) {
            my $new_tag = $prefix . $tag;
            my $value = $values->{$tag}[0];
            set_tag( $dataset, $new_tag, $value );
            $renamed_tags{$new_tag} = $tag;
        }
    }
    return wantarray ? %renamed_tags : \%renamed_tags;
}

sub set_tag
{
    my ( $cif, $tag, $value ) = @_;
    if( !exists $cif->{values}{$tag} ) {
        push( @{$cif->{tags}}, $tag );
    }
    $cif->{values}{$tag}[0] = $value;
}

sub set_loop_tag
{
    my( $cif, $tag, $in_loop, $values ) = @_;
    if( !exists $cif->{values}{$tag} ) {
        push( @{$cif->{tags}}, $tag );
        if( !defined $in_loop || $tag eq $in_loop ) {
            push( @{$cif->{loops}}, [ $tag ] );
            $cif->{inloop}{$tag} = @{$cif->{loops}} - 1;
        } else {
            my $nloop = $cif->{inloop}{$in_loop};
            push( @{$cif->{loops}[$nloop]}, $tag );
            $cif->{inloop}{$tag} = $nloop;
        }
    }
    $cif->{values}{$tag} = $values;
}

##
# Evaluates if the data item is marked as containing an unknown value
# according to CIF notation.
#
# @param $frame
#       Data frame that contains the data item as returned by the CIF::COD::Parser.
# @param $data_name
#       Name of the data item.
# @param $index
#       The index of the data item value to be evaluated as unknown.
# @return
#       Boolean value denoting if the data item contains an unknown value.
##
sub has_unknown_value
{
    my ( $frame, $data_name, $index ) = @_;

    my $value = $frame->{'values'}{$data_name}[$index];
    my $type = $frame->{'types'}{$data_name}[$index];

    return $value eq '?' && $type eq 'UQSTRING';
}

##
# Evaluates if the data item is marked as containing an inapplicable value
# according to CIF notation.
#
# @param $frame
#       Data frame that contains the data item as returned by the CIF::COD::Parser.
# @param $data_name
#       Name of the data item.
# @param $index
#       The index of the data item value to be evaluated as inapplicable.
# @return
#       Boolean value denoting if the data item contains an inapplicable value.
##
sub has_inapplicable_value
{
    my ( $frame, $data_name, $index ) = @_;

    my $value = $frame->{'values'}{$data_name}[$index];
    my $type = $frame->{'types'}{$data_name}[$index];

    return $value eq '.' && $type eq 'UQSTRING';
}

##
# Evaluates if the data item is marked as containing a special (unknown or
# inapplicable) value according to CIF notation.
#
# @param $frame
#       Data frame that contains the data item as returned by the CIF::COD::Parser.
# @param $data_name
#       Name of the data item.
# @param $index
#       The index of the data item value to be evaluated as special.
# @return
#       Boolean value denoting if the data item contains a special value.
##
sub has_special_value
{
    my ( $frame, $data_name, $index ) = @_;

    return has_unknown_value( $frame, $data_name, $index ) ||
           has_inapplicable_value( $frame, $data_name, $index );
}

1;
