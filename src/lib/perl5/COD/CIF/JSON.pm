#------------------------------------------------------------------------------
#$Author$
#$Date$ 
#$Revision$
#$URL$
#------------------------------------------------------------------------------
#*
#  Serializes and deserializes CIF data structures, generated by COD CIF
#  parsers, to/from JSON format.
#**

package COD::CIF::JSON;

use strict;
use warnings;
use JSON qw( encode_json decode_json );

require Exporter;
our @ISA = qw( Exporter );
our @EXPORT_OK = qw(
    cif2json
    json2cif
);

my $format_version = 1.1;

sub cif2json($)
{
    my( $data ) = @_;
    return encode_json( { data => $data,
                          version => sprintf '%2.1f', $format_version } );
}

sub json2cif($)
{
    my( $json ) = @_;
    my $js = new JSON;
    $js->incr_parse( $json );
    my $decoded;
    my @decoded;
    while( $decoded = $js->incr_parse ) {
        if( !exists $decoded->{version} ) {
            die 'ERROR, unknown serialization format version -- ' .
                 'will not deserialize' . "\n";
        }
        my( $our_major )   = split( '\.', $format_version );
        my( $their_major ) = split( '\.', $decoded->{version} );
        if( $our_major != $their_major ) {
            die 'ERROR, major versions of used serialization ' .
                'format and the deserializer are different ' .
                "(current: $our_major, used: $their_major) -- " .
                'will not deserialize' . "\n";
        }
        push( @decoded, $decoded->{data} );
    }
    return \@decoded;
}

# Functions for compatibility with object-oriented usage

sub new
{
    my( $class ) = @_;
    my $self = {};
    bless( $self, $class );
    return $self;
}

sub Run
{
    my( $self, $filename, $options ) = @_;

    my $data;
    my $nerrors = 0;
    my $error_messages = [];
    eval {
        open( my $inp, $filename ) or die "unable to open the file";
        my $json = join( "\n", <$inp> );
        close( $inp );
        $data = json2cif( $json );
    };
    if( $@ ) {
        push( @$error_messages, $@ );
        $nerrors ++;
    }

    $self->{YYData} = { ERRCOUNT => $nerrors,
                        ERROR_MESSAGES => $error_messages };

    if( ref $options eq "HASH" ) {
        $self->{USER}{OPTIONS} = $options;
    }

    return $data;
}

sub YYData
{
    my( $self ) = @_;
    return $self->{YYData};
}

1;
