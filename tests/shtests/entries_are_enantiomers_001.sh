#!/bin/sh

#BEGIN DEPEND------------------------------------------------------------------
INPUT_MODULES='src/lib/perl5/COD/CIF/Data/CODNumbers.pm'
#END DEPEND--------------------------------------------------------------------

perl <<'END_SCRIPT'
#------------------------------------------------------------------------------
#$Author$
#$Date$ 
#$Revision$
#$URL$
#------------------------------------------------------------------------------
#*
#* Unit test for the COD::CIF::Data::CODNumbers::entries_are_enantiomers()
#* subroutine. Tests the way the subroutine behaves when neither of the entries
#* refer to the other entry as a related enantiomer entry.
#**

use strict;
use warnings;

use COD::CIF::Data::CODNumbers;

sub run_test
{
    my ($entry_1, $entry_2) = @_;

    my $entries_are_enantiomers =
        COD::CIF::Data::CODNumbers::entries_are_enantiomers(
            $entry_1,
            $entry_2
        );
    if ( $entries_are_enantiomers ) {
        print "Entries '$entry_1->{'id'}' and '$entry_1->{'id'}' are " .
              "considered enantiomers of each other." . "\n";
    } else {
        print "Entries '$entry_1->{'id'}' and '$entry_1->{'id'}' are " .
              "not considered enantiomers of each other." . "\n";
    }
}

my $entry_1 = {
    'id' => '0000001',
};

my $entry_2 = {
    'id' => '0000002',
};

run_test($entry_1, $entry_2);
run_test($entry_2, $entry_1);

END_SCRIPT
