#!/usr/bin/env perl

use strict;
use warnings;
use feature qw/ say /;

BEGIN {                                         # 'use' statements use a BEGIN block BTS 
    push @INC, '/home/griseoh/Perl_Scripts';    # This is how we specify the path of  
};                                              # new object module which is to be included

use Data::Dumper;

# OOPS revolves around structuring of our data and logic in predetermined objects
# Each object has properties and methods defined by their classes
# The attribute values and results produced are specific to each object 

use WhisperObj;    # $calibre, $weight, $color, $critval

my $Whisper = Whisper->new( '0.60', 7.5, 'ivory', 44 );

say $Whisper->calibre;

$Whisper->set_calibre('0.95');

say $Whisper->get_calibre_and_critval;

1;