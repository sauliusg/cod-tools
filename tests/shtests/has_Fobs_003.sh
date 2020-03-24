#! /bin/sh

#BEGIN DEPEND------------------------------------------------------------------
INPUT_MODULES='src/lib/perl5/COD/CIF/Data/CODFlags.pm'
#END DEPEND--------------------------------------------------------------------

perl <<'END_SCRIPT'
#------------------------------------------------------------------------------
#$Author$
#$Date$ 
#$Revision$
#$URL$
#------------------------------------------------------------------------------
#*
#* Unit test for the COD::CIF::Data::CODFlags::has_Fobs subroutine.
#* Tests the way the subroutine behaves when the input data block contains
#* various data items some of which explicitly state that the entry has a
#* related diffraction file and some of which do not support this statement.
#**

use strict;
use warnings;

use COD::CIF::Data::CODFlags qw( has_Fobs );

my $data_block_1 =
{
  'name'   => 'has_Fobs_item_1',
  'tags'   => [ '_cod_related_diffrn_file.code',
                '_cod_related_diffrn_file_code',
                '_cod_database_fobs_code', ],
  'loops'  => [],
  'inloop' => {},
  'values' => { '_cod_related_diffrn_file.code' => [ '0000000' ],
                '_cod_related_diffrn_file_code' => [ '?' ],
                '_cod_database_fobs_code'       => [ '.' ], },
  'precisions' => {},
  'types'  => { '_cod_related_diffrn_file.code' => [ 'UQSTRING' ],
                '_cod_related_diffrn_file_code' => [ 'UQSTRING' ],
                '_cod_database_fobs_code'       => [ 'UQSTRING' ], },
};

my $data_block_2 =
{
  'name'   => 'has_Fobs_item_2',
  'tags'   => [ '_cod_related_diffrn_file.code',
                '_cod_related_diffrn_file_code',
                '_cod_database_fobs_code', ],
  'loops'  => [],
  'inloop' => {},
  'values' => { '_cod_related_diffrn_file.code' => [ '?' ],
                '_cod_related_diffrn_file_code' => [ '0000000' ],
                '_cod_database_fobs_code'       => [ '.' ], },
  'precisions' => {},
  'types'  => { '_cod_related_diffrn_file.code' => [ 'UQSTRING' ],
                '_cod_related_diffrn_file_code' => [ 'UQSTRING' ],
                '_cod_database_fobs_code'       => [ 'UQSTRING' ], },
};

my $data_block_3 =
{
  'name'   => 'has_Fobs_item_3',
  'tags'   => [ '_cod_related_diffrn_file.code',
                '_cod_related_diffrn_file_code',
                '_cod_database_fobs_code', ],
  'loops'  => [],
  'inloop' => {},
  'values' => { '_cod_related_diffrn_file.code' => [ '?' ],
                '_cod_related_diffrn_file_code' => [ '.' ],
                '_cod_database_fobs_code'       => [ '0000000' ], },
  'precisions' => {},
  'types'  => { '_cod_related_diffrn_file.code' => [ 'UQSTRING' ],
                '_cod_related_diffrn_file_code' => [ 'UQSTRING' ],
                '_cod_database_fobs_code'       => [ 'UQSTRING' ], },
};

my @blocks = (
    $data_block_1,
    $data_block_2,
    $data_block_3,
);

for my $data_block ( @blocks ) {
    my $has_Fobs = has_Fobs( $data_block );
    if ( $has_Fobs ) {
        print 'Data block \'' . $data_block->{'name'} . '\' is marked as having a related diffraction file.' . "\n";
    } else {
        print 'Data block \'' . $data_block->{'name'} . '\' is not marked as having a related diffraction file.' . "\n";
    }
}

END_SCRIPT
