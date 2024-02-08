#!/usr/bin/env perl

use strict;
use warnings;
use feature qw/ say /; 

use Data::Dumper;

# System commands are run between ``

`touch ./$_.txt` for (1..3);        # Creates new text files for each value in given range

my $output = `ls ./`;               # Lists all files in the current directory

say $output;

1;