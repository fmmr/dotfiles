#!/usr/bin/perl

use warnings;
use strict;

my $num = 1;
if (scalar(@ARGV) > 0){
	$num = $ARGV[0]
}

my $dict = "/usr/share/dict/words";

open(WORDS, "<$dict") or die "Can't open words file $dict: $!\n";
my @words = <WORDS>;
close(WORDS);

chomp(@words);

for (my $i = 0; $i < $num; $i++) {
    print "$words[int(rand($#words))] ";
}

print "\n";
