#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;

# Subroutines are exactly same as functions

# The subroutines have a variable @_ , that is an array 
# It holds all values being passed into the subroutine

sub test {

    my $name = $_[0];       # We have referred the variable @_ here as $_ for scalar use
                      
    print "Hello, $name!\n";
}

test( 'Gray' );

my @array = qw/ a b c /;

sub test2 {

    print Dumper ( @_ );    # The passed data structure spreads into the @_ array
}                           # This can be unwanted at times

test2 ( @array );

# We can prevent this by passing a reference to the concerned data structure :

test2 ( \@array );

# We can also use references to push something to a structure

my @array2 = qw/ a b c /;

sub pushtheval {

    my $arg = shift @_;

    push $arg->@*, 'from the sub';      # Pushing the value
}

pushtheval( \@array2 );     # Giving reference to the subroutine

print Dumper( @array2 );

# We can call one subroutine from inside the other one
# Order of definition of subroutine doesnt matter since they are compiled at runtime :

sub evaluate {
    evaluate2();
    print("hello from evaluate \n");
}

sub evaluate2 {
    print("hello from evaluate2 \n");
}

evaluate();

# Perl subroutines always implicitly return the last value they worked with :

sub retval {
    my $a = 1;
    my $b = 2;

    my $c = $a + $b;
}

print Dumper ( retval() );

# We can explicitly tell what a subroutine should return via the return keyword :

sub knownretval {
    my $a = 1;
    my $b = 2;

    my $c = $a + $b;

    return undef;
}

print Dumper ( knownretval() );

1;