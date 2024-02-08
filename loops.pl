#!/usr/bin/env perl

use strict;
use warnings;
use feature qw/ say /;

use Data::Dumper;

# While loop :

my $test = 1;

while ( $test < 10 ) {

    say "$test times executed.";

    $test++;
}

# For loop :

for ( my $test = 0; $test <10; $test++  ) {

    say "$test times executed.";
}

# Foreach loop :

my @list = ( 1..10 );

foreach my $item ( @list ) {

    say "Item is  : $item";
}

# We need to take note that if the items are 
# changed or manipulated in a foreach loop
# they are also changed in the actual list 

say Dumper ( \@list );

foreach my $loopvar ( @list ) {

    $loopvar++;

    say "Changed item is : $loopvar";
}

say Dumper ( \@list );

# we can also use nested foreach loops :

my @nested = ( 1, 2 );

foreach my $loopvar ( @list ) {

    say "Outer Loop item : $loopvar";

    foreach my $nestloop ( @nested ) {

        say "\tNested Loop item : $nestloop";
    }
}

# We can use 'next' to skip over an iteration in a loop:

foreach my $loopvar ( @list ) {

    say "Outer Loop item : $loopvar";

    next if $loopvar == 3;

    foreach my $nestloop ( @nested ) {

        say "\tNested Loop item : $nestloop";
    }
}

# We can use 'last' to specify which loop iteration is the last one:

foreach my $loopvar ( @list ) {

    say "Outer Loop item : $loopvar";

    last if $loopvar == 6;

    foreach my $nestloop ( @nested ) {

        say "\tNested Loop item : $nestloop";
    }
}

# We can also choose to 'redo' any iteration of the loop as well :

foreach my $loopvar ( @list ) {

    $loopvar++;

    say "Outer Loop item : $loopvar";

    redo if $loopvar == 6;

    foreach my $nestloop ( @nested ) {

        say "\tNested Loop item : $nestloop";
    }
}

# We can use 'goto' with NAMED LOOPS for having granular control of loops :

LOOP1:          # Each loop can be labelled like this 
foreach my $loopvar ( @list ) {

    goto LOOP2 if $loopvar == 8;

    say "Outer Loop item : $loopvar";
    
    LOOP2:      # Labelling the nested loop
    foreach my $nestloop ( @nested ) {

        say "\tNested Loop item : $nestloop";
    }
}

# We can use 'goto' in conjunction with other loop controls for better control on each iteration

1;