#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;

my %map = (
    a => 20,
    b => 'hello',
    c => 11.22,
);

print Dumper ( %map );

print Dumper ( $map{c} );

$map{d} = 'new';

print Dumper ( %map );
 
my %map2 =( 
    hello => 1,
    %map,
    c => 'cvcky',
 );

 print Dumper ( %map2 );

my %maps = ( 
    a => 'one',
    b => 'two',
    c => 'three',
    d => 'four!',
    e => undef,
 );

 my @keys = keys %maps;

 print Dumper ( @keys );

 my $size = keys %maps;

 print Dumper ( $size );

 my $exists = exists $maps{d} ? 'yes' : 'no';

 print Dumper ( $exists );

 my $valexists = $maps{e} ? 'yes' : 'no';

 print Dumper ( $valexists );

 delete $maps{b};

 print Dumper ( %maps ); 

1;