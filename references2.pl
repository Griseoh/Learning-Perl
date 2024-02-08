#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;

my $hash_ref = {
    a=> 1,
    b=> 2,
    c=> {
        new => 1,           # We can create nested references in a hash reference
        new2 => 2,
        deeply => [3,4,5],  # We can also access the deeper and deeper levels of these references
    },
};

my $array_ref = [
    1,                      # Same thing can be done for array reference
    [ qw/ a b c /],
    {
        a => 1,             # Again, here too we can access deeper and deeper levels
        b => {
            c => [1,2,3],
            d => 4,
        },
    },
];

print Dumper ( $hash_ref->{c}->{deeply}->[1] );

print Dumper ( $array_ref->[2]->{b}->{c}->[1] );

# We can use ref function to check the type of references taken

print Dumper ( ref ( $hash_ref ) );

print Dumper ( ref ( [] ) );

# Always remember to dereference the reference 
# to use any normal data structure related methods

1;