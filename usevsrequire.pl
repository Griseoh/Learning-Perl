#!/usr/bin/env perl

use strict;
use warnings;

# 'use' operates at compile time while 'require' operates at runtime
use feature qw/ say /;

# We can use 'require' to obtain modules conditionally

if ( 1 > 2 ) {
    require Nonexistent;
}

use Data::Dumper qw/ /;     # Causes none of the methods to be exported from the module

say Dumper ('Yo');

say Data::Dumper::Dumper('Gray');       # Uses a specific method of the module

# BTS >> perl converts '::' to path name and appends the pm file

# Data :: Dumper --> Data/Dumper.pm

# BTS >> when we 'use', BEGIN is called and it uses 'require'

# That is to say : use Data::Dumper translates to :
# BEGIN{
#     require "Data/Dumper.pm";
#     Data::Dumper->import()            # import() method will import all passed methods
# }                                     # it will export all the methods if nothing is passed

1;