#!/usr/bin/env perl

use strict;
use warnings;

my $test = 20;
my $string = 'hello';
my $decimal = 5;
my $string2 = 'bhadwe';
my $string3 = "hello2 $string\n";

print $test + $decimal;

print $test - $decimal;

print $test * $decimal;

print $test / $decimal;

print $string.$string2;

print $string3;

print $string.$decimal."\n";

print $string + $decimal;

print "hello \$number \n";

1;