#!/usr/bin/env perl

use strict;
use warnings;
use feature qw/ say /;

use Data::Dumper;

# Map function executes the code block for every item given

my @list = qw/ cat dog rat /;
my @new = map {
    uc $_          # 'uc' used to change into upper-case
                   # Remember '$_' provides the current item context
} @list;

say Dumper ( \@new );

# We can also use other variables in the code block for more results :

my @new2 = map {
    my $item = uc $_;
    $item .= '_new';
} @list;

say Dumper ( \@new2 );

# Grep function is used to compare and match item of a list
# to a value and then push it to a specified list

my @new3 = grep {
    $_ eq 'cat'|| $_ eq 'dog';
} @list;

say Dumper ( \@new3 );

# Split function is used to take a pattern in a string 
# and splits the string based off that pattern

my @parts = split m/e/, 'test_test';

say Dumper ( \@parts );

# Join function is used to join a list of string into a single one

my @parts2 = qw/ jhin the virtuoso /;
my $full = join '_', @parts2;

say Dumper ( $full );

# Like 'uc' we also have 'lc' for lower-case
# We can conjugate it with 'first' to focus on the first letter of the string

my $stringvar = 'Gray';
my $newstringvar = lcfirst $stringvar;

say Dumper $newstringvar;

my $newerstringvar = ucfirst $stringvar;

say Dumper $newerstringvar;

# We can use the length function to determine the length of the string

my $stringis = 'Doflamingo';
my $lenstring = length $stringis;

say Dumper $lenstring;

# We can use rand function to get a random number 

my $randno = rand ( 10 );
say Dumper ( $randno );

# We can use this in conjugation with the int function to generate a random integer

my $randint = int ( $randno );
say Dumper ( $randint );

# We can use the sleep function to delay the execution for a given amount of time

sleep 2;
say Dumper ( "You are awake" );

# We can use  substr function to obtain a substring from a specified string

my $substring = substr( 'cat', 0, 1 );

say $substring;

# We can also use time function to obtain epoch time

say time;

1;