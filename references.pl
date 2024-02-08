#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;

# References prevent memory hogging due to duplication

my %hash = ( a => 1, b => 2);
my @array = qw/ string1 string2 /;
my $scalar = 32;

print \%hash . "\n";        # Referencing the memory location

print \@array . "\n";

print \$scalar . "\n";

my $ref1 = \@array;

my $ref2 = \@array;

push $ref1->@*, 'new';      # Dereferencing from the memory location 

push $ref2->@*, 'new2';     # We use ->@* to point to the stored value at memory location

print Dumper ( \@array );

print Dumper ( \%hash );

print Dumper ( \$scalar );

# We can create references like we construct arrays or hashes :

my $hash_ref = {
    
    hello => 1,         # Use hash syntax as given out by DataDumper 
    world => 2,
};

my $array_ref = [

    1,                  # Use array syntax as given out by DataDumper
    2,
    3,
    4,

];

print Dumper ( $hash_ref );

print Dumper ( $array_ref );

print Dumper ( $hash_ref->{hello} ); # Dereferencing from a referenced value

print Dumper ( $array_ref->[1] );    # We use an -> (arrow) for dereferencing

print Dumper ( $hash_ref->%* );     # Dereferencing the whole hash

print Dumper ( $array_ref->@* );    # Dereferencing the whole array

# We can use '@$struct_name' or '@{ $struct_name }' for dereferencing alternatively
 
1;