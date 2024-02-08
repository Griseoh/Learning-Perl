#!/usr/bin/env perl

use strict;
use warnings;
use feature qw/ say /;

use Data::Dumper;

# @ARGV variable holds the current values passed to the script via the command line

say Dumper \@ARGV;

# We can usr this variable exactly as any other array

say Dumper $ARGV[1];

# $$ variable holds the process-id of the script

say Dumper $$;

# @INC variable holds the current module directory paths

say Dumper \@INC;

# %ENV variable holds the environment variables 

say Dumper \%ENV;

say Dumper $ENV{TEST_ENV_VAR};      # We can refer to a certain environment variable

# We can use <STDIN> variable to get the standard inputs to script

while (<STDIN>) {
    say $_;
}

1;