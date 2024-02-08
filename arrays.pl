#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;

my @test = (
    22,
    'hello',
    1.22
);

my @string = qw/ one two three four /;

print Dumper( @test );

print Dumper( $string[2] );

$string[3] ='four!';

print Dumper( @string );

my $size = @test;

print Dumper( $size );

my $last_index = $#string;

print Dumper( $last_index );

my @quick_populate = (11..30);

print Dumper ( @quick_populate );

my @arey = (1,2,3,4);

print Dumper ( @arey[2..3] );

my @numarray = (1..7);

push @numarray, 8;

print Dumper ( @numarray );

pop @numarray;

print Dumper ( @numarray );

shift @numarray;

print Dumper ( @numarray );

unshift @numarray, 1;

print Dumper ( @numarray );

my @words = qw/ h a s d f g r y u i o p /;

@words = sort @words;

print Dumper ( @words );

my @nvmerals = (5,4,7,9,8,2,1,3,10);

my @cvcky = sort @nvmerals;

my @uncvky = sort { $a<=>$b } @nvmerals;

my @cvksaab = sort { $b<=>$a } @nvmerals;

print Dumper ( @cvcky );

print Dumper ( @uncvky );

print Dumper ( @cvksaab );

1;