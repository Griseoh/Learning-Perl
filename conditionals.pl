#!/usr/bin/env perl

use strict;
use warnings;
use feature qw/ say /;

use Data::Dumper;

# The 'if' - 'elsif' - 'else' conditional :

my $test = 3;

if ($test > 4) {
    say "hello";
    say "world";

    my $var = 1;
    say "my var: $var";
}
elsif ($test < 6) {
    say "elsif condition met";
}
else {
    say "else block statement";
}


# The if-elsif-else conditional is sequential
# It implies that if one condition is met, 
# the next conditons wont be checked even if they are true 


# The 'unless' conditional :

unless ($test > 2) {
    say "this is a negative case";
}
elsif ($test > 4) {
    say "elsif case";
} 
else{
    say "else block";
}

# The unless conditional is just a complement of if-else conditional

# Conditional Assignments :

my $testvar = 1;

$testvar = 2 if 2 > 1;         # if condition satisfied -> assignment done

say "var: $testvar";

$testvar = 3 unless 3 > 2;     # if condition satisfied -> assignment done

say "var: $testvar";

1;