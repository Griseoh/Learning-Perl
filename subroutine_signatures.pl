#!/usr/bin/env perl

use strict;
use warnings;
use feature qw/ signatures /; # signatures are a feature that need to be imported 

use Data::Dumper;

# We can use signatures to define the arguments our subroutine should take :

sub test( $name ) {
    print "hello, $name.\n";
}

test( 'Gray' );

sub test2 ( $name = 'Bob') {    # We can define a default value for the subroutine arguments to pass
    print "hola, $name.\n";
}

test2(  );
test2( "Griseoh" );

# An optional argument must come at the end of definition of the subroutine :

sub test3 ( $lst_nm, $fst_nm = 'Marco') {
    print "Good Evening, $fst_nm $lst_nm.\n";
}

test3( 'Santiago' );

# We can also pass in named arguments :

sub test4 ( %inputs ) {
    print Dumper \%inputs;    
}

test4( 
    1 => 'one',
    2 => 'two',
 );

# We can use arrays to pass in a bunch of arguments that may or may not be needed
# This is slurpee capture

sub test5 ( $name, @def_vals ) {
    print Dumper $name;
    print Dumper \@def_vals;
}

test5 ('Jesse', 1, 2, 3, [ qw/ a b c / ]);

test5 ('Waltuh');

1;