#!/usr/bin/env perl

use strict;
use warnings;
use feature qw/ say /;

BEGIN{
    push @INC,  '/home/griseoh/Perl_Scripts';
}

use Data::Dumper;
use gmod;

say add_nums( 3, 2 );            

say gmod::add_nums( 4, 5 );     # Static Calling

say gmod->add_nums( 6, 7 );     # Class Calling 
# (will throw an error because the module name is initialized as a class variable)

# If we bless the module, the calling method becomes the Instance Method 

1;