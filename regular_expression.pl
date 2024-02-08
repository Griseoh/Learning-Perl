#!/usr/bin/env perl

use strict;
use warnings;
use feature qw / say /;

use Data::Dumper;

# We can use regular expressions (Reg-Exs) as below :

# Checking for a pattern-match :

my $test = 'cat';

if ( $test =~ /dog/ ) {
    say "Matches !";
}

else {
    say "Doesn't match !!";
}

my $test2 = 'catdogmouse';

if ( $test2 =~ /dog/ ) {
    say "Matches !";
}

else {
    say "Doesn't match !!";
}

# We can use the 'm' modifier to change the wrapping ;

my $test3 = 'dog/';

if ( $test3 =~ m{dog/} ) {
    say "Matches !";
}

else {
    say "Doesn't match !!";
}

# We can use a ^ and $ sequence for exact matching :

my $test4 = 'catdogmouse';

if ( $test4 =~ m{^dog$} ) {
    say "Matches !";
}

else {
    say "Doesn't match !!";
}

# We can use a \w and \W to check 
# if the variable is followed by
# a word character or not

my $test5 = 'dogs';

if ( $test5 =~ m{^dog\w$}) {          # Test for trailing word characters
    say "Matches !";
}

else {
    say "Doesn't match !!";
}

my $test6 = 'dogs';

if ( $test6 =~ m{^dog\W$} ) {         # Test for trailing non-word characters
    say "Matches !";
}

else {
    say "Doesn't match !!";
}

# We can use \d to check for trailing numbers :

my $test7 = 'dog11';

if ( $test7 =~ m{^dog\d$} ) {        # Test will fail because we are testing for a single digit 
    say "Matches !";
}

else {
    say "Doesn't match !!";
}

my $test8 = 'dog11';

if ( $test8 =~ m{^dog\d+$} ) {      # Test passes because now we have specified one or more digit
    say "Matches !";                # We can also use a * instead of +
}

else {
    say "Doesn't match !!";
}

my $test9 = 'dog234';

if ( $test9 =~ m{^dog\d{2}$} ) {     # Testing for exactly two trailing digits
    say "Matches !";
}

else {
    say "Doesn't match !!";
}

my $test10 = 'dog24';

if ( $test10 =~ m{^dog\d{2,4}} ) {           # Testing for a range of digits
    say "Matches !";
}

else {
    say "Doesn't match !!";
}

# We can also use \s or \S to check for trailing spaces or non spaces :

my $test11 = 'dog   ';

if ( $test11 =~ m{dog\s} ) {
    say "Matches !";
}

else {
    say "Doesn't match !!";
}

# We can use 'i' modifier fir case insensitive operations

my $test12 = 'DOG';

if ( $test12 =~ m{dog}i ) {
    say "Matches !";
}

else {
    say "Doesn't match !!";
}

# We can use "!~" to check for a non-match

# We can use capturing to capture a string pattern :

my $test13 = 'cat1234';

if ( $test13 =~ m{cat(\d+)}i ) {
    say "Matches !: $1";        # We capture the pattern in the special variables $1, $2, $3
    
}

else {
    say "Doesn't match !!";
}

# Code to capture the first two characters of a passed string :

my @list = qw/ dog cat rat /;

foreach my $item ( @list ) {
    $item =~ m{^(\w{2})};
    say $1;
}

# We can use the same concept to replace a known pattern with another pattern :

foreach my $item ( @list ) {
    $item =~ s/\w{2}/Virtuoso/;        # 's' indicates replacement
    say $item;
}

# Storing the captures :

foreach my $item ( @list ) {
    my @captures = $item =~ m/(\w)(\w)/;        
    say Dumper \@captures;
}

1;