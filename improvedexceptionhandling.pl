#!/usr/bin/env perl

use strict;
use warnings;
use feature qw / say /;

BEGIN {
    push @INC, '/home/griseoh/perl5';
}

use Data::Dumper;

use Exception::Class;
use Try::Tiny::SmartCatch;

try sub {
    die "This is it";           # Code with possible errors goes in this block
},
catch_default sub {
    say "$_";                   # Catches all the errors in the try block
}   

1;