#! /usr/bin/perl -w

#
# here we link libraries
#
use strict;
use warnings;
#use SOptions;
use Getopt::Long;
use ShowStruct;
use CIFParser;

#
# here we define variables
#	first - constant values
#	then  - common variables
#
my $version = 0.1;

my $CIFfile;
my $CIFtags;
my $outputFile;
my $dictFile;
my $quiet = 0;
my $parser = new CIFParser;

#
# here we declare subroutines
#

# subroutine to print module version and copyright notice
sub VersionMessage;

# subroutine to print help on module usage
sub HelpMessage;

# subroutine to extract tags from CIFfile array
sub getTags;

# subroutine to extract tags from data block array
sub getTagsSData;

# subroutine to be used then printing information (debug output could be 
# made using print STDOUT|STDERR "")
sub output;

#
# main program code
#

# check parameters passed
Getopt::Long::GetOptions
	("output=s"			=> \$outputFile,
		"dictionary=s"	=> \$dictFile,
		"version"		=> sub { VersionMessage() },
		"quiet"			=> sub { $quiet = 1; },
		"no-quiet"		=> sub { $quiet = 0; },
		"help|?"		=> sub { HelpMessage() }
	);

# parse CIF files. If none is passed - display help message
if(@ARGV > 0)
{
	if(@ARGV > 1)
	{
		my $filen = 0;
		while($filen < @ARGV)
		{
			push(@{$CIFfile}, { kind => 'FILE',
								content => $parser->Run($ARGV[$filen]),
								name => $ARGV[$filen] });
			$filen++;
		}
	} else {
		$CIFfile = $parser->Run($ARGV[0]);
	}
} else {
	HelpMessage();
	exit();
}

if($quiet == 0)
{
	print "Got structure for file(s) parsed:\n";
	showRef($CIFfile);
	print "\n";
}

# take tags from parsed CIF file
if(@ARGV > 1)
{
	my $filen = 0;
	while($filen < @ARGV)
	{
		push( @{$CIFtags}, { kind => 'DATAFILE',
				name => $ARGV[$filen],
				content => getTags( @{$CIFfile}[$filen]->{content} ) } );
		$filen++;
	}
} else {
	$CIFtags = getTags($CIFfile);
}

#
# here goes all subroutines bodies
#

sub VersionMessage
{
	print <<END_M;
cif_check_dict (using CIFParser v.$CIFParser::version) v.$version
Copyright (C) 2007 ???
This is free software. You may redistribute copies of it under the terms of
the GNU General Public License <http://www.gnu.org/licenses/gpl.html>.
There is NO WARRANTY, to the extent permitted by law.

Written by Justas Butkus.
END_M
}

sub HelpMessage
{
	print <<END_M;
I hope you know, what you are doing.
If not - feel recommended to wait until release of production version.
END_M
}

sub getTags
{
	my $file = shift;
	my $size = scalar @$file;
	my $tags;
	if($size > 1)
	{
		my $datan = 0;
		while($datan < $size)
		{
			push( @{$tags}, getTagsSData( $file->[$datan] ) );
			$datan++;
		}
	} else {
		$tags = getTagsSData($file->[0]);
	}
	if( $quiet == 0 )
	{
		print "Got following tags from file:\n";
		showRef($tags);
		print "\n";
	}
	return $tags;
}

sub getTagsSData
{
	my $data = shift;
	my @tags;
	my $dataname = $data->{name};
	my $noitems = scalar @{$data->{content}};
	my $content = $data->{content};
	for(my $i = 0; $i < $noitems; $i++)
	{
		my $item = $content->[$i];
		if( $item->{kind} eq 'TAG' || $item->{kind} eq 'LOCAL' )
		{
			push(@tags, $item->{name});
		} elsif($item->{kind} eq 'loop') {
			foreach my $tag (@{$item->{name}})
			{
				push( @tags, $tag );
			}
		} elsif($item->{kind} eq 'SAVE') {
			my $savetags = getTagsSData( $item );
			foreach my $tag ( @{$savetags->{content}} )
			{
				push(@tags, $tag);
			}
		} else {
			die("ERROR: file contains elements, not handled by ".
			"this module!\n");
		}
	}
	return { kind => 'DATATAGS',
				name => $dataname,
				content => \@tags };
}

sub output
{
	$data = shift;
	if( !defined($outputFile) || (length($outputFile) == 0) )
	{
		print $data;
	} else {
		my $fh = new FileHandle "> $output";
		if( defined $fh )
		{
			print $fh $data;
			$fh->close;
		} else {
			die("Please check your output file ["
				. $outputFile . "]. There was an error"
				. " openning it!\n");
		}
	}
}
