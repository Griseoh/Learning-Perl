#!/usr/bin/env perl

use strict;
use warnings;
use feature qw/ say /;

use Data::Dumper;

# Ternary Statement :

print 1 ? 'yes' : 'no';

print 0 ? 'yes' : 'no';

print '' ? 'yes' : 'no' ;

print '0' ? 'yes' : 'no' ;

# We can use say instead of print to automatically add a new line and make the code more clean :

say 1 ? 'yes' : 'no' ;

say 1 == 0 ? 'yes' : 'no';

say 1 != 0 ? 'yes' : 'no';

say 1 > 0 ? 'yes' : 'no';

say 1 < 0 ? 'yes' : 'no';

# We can use 'three-way-comparison' to check 
# if an a value is greater, equal or less in comparison :

say 1 <=> 1 ;

say 2 <=> 1 ;

say 0 <=> 1 ;

# This is also called the 'spaceship' operator

# For strings we have different comparison operators :

say 'a' eq 'b' ? 'yes':'no';        # is equal

say 'a' ne 'b' ? 'yes':'no';        # is not equal

say 'a' lt 'b' ? 'yes':'no';        # is less than

say 'a' gt 'b' ? 'yes':'no';        # is greater than

say 'a' le 'b' ? 'yes':'no';        # is less than or equal

say 'a' ge 'b' ? 'yes':'no';        # is greater than or equal

# We have and (&&) and or (||) operators for chainings logical expressions :

say 1 > 0 && 2 > 3 ? 'yes':'no';    #  AND

say 1 > 0 || 2 > 3 ? 'yes':'no';    #  OR

# Assignment operators :

my $str = 100;

$str += 10;

say $str;

$str -= 10;

say $str;

$str *= 10;

say $str;

$str /= 10;

say $str;

# Concatenation assign :

my $stri = 'hello';

$stri .= ' world';

say $stri;

# Repetition operation :

my $string = 'gas ' x 7;

say $string;

# Incrementing and Decrementing :

my $num = 7;

$num++;         # increment

say $num;

$num--;         # decrement

say $num;

1;