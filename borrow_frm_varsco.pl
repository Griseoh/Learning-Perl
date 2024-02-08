#!/usr/bin/env perl

use strict;
use warnings;
use feature qw/ state /;            # Tells the script that a variable is to be 
                                    # initialized only once in the memory throughout the execution

use Data::Dumper;

# We can use 'require' method to obtain 
# the variable defined with 'our' keyword 
# in the specified script file :

require './variable_scopes.pl';     # Specifying the script to be used

our ( $var2 );                      # Specifying which variable to pull

print Dumper ( $var2 );

sub test {
    my $varis = 1;              # variable is initialized for each function call
    $varis += 1;
    print $varis ."\n";

}

test();
test();
test();
test();
test();
test();

sub test2 {
    state $varis = 1;           # state constraint ensures that variable is initialized once
    $varis += 1;            
    print $varis ."\n"; 
}

test2();
test2();
test2();
test2();
test2();
test2();

1;