package gmod;

use strict;
use warnings;

use Exporter qw/ import /;       # Esential to ensure our module can export its methods

our @EXPORT = qw/ add_nums /;    # If we use @EXPORT_OK we need to specify which 
                                 # method to use in our source script using qw//

sub add_nums{
    my ($num1, $num2) = @_;

    return $num1 + $num2;
}

1;