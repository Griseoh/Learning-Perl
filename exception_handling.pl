#!/usr/bin/env perl

use strict;
use warnings;

#Perl uses warn, eval {} and die methods for error handling :

my $var = 'hello';

warn "Something might go wrong";       # The warn statement will only warn
                                       # it wont stop the flow of control

eval {
    die 'maut aa rahi';
    print "Kaam dhandha karna";        # This line wont print as it is after the die statement
};

print "Waltuh where is the meth ? \n"; # This line will print even after the die statement
                                       # The reason is that die is contained within an eval {}

# The variable '$@' stores the value of the exception present in eval block

print "$@\n";

die 'can not go on';                   # die statement with exception message

print "hello $var \n";                 # This line wont print as it is after the die statement

1;