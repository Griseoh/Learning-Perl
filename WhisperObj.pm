# Module files arent executable so we need not write a shebang line

package Whisper;

use strict;
use warnings;

sub new {
    my ( $class, $calibre, $weight, $color, $critval ) = @_;

    my $self = {
        calibre => $calibre,
        weight => $weight,
        color => $color,
        critval => $critval,
    };

    bless $self, $class;

    return $self;
}

# We can write the setter and getters for the objects ourselves 

# Getter
sub calibre {
    my $self = shift;           # Note that now $self is a blessed verison of the $class
    return $self->{calibre};
}

# Setter 
sub set_calibre {
    my ($self, $calibre) = @_;
    $self->{calibre} = $calibre;
}

# We can also write new methods for our class 

sub get_calibre_and_critval {
    my $self = shift;
    return $self->{critval} + $self->{calibre};
}

# We can use the default DESTROY method for cleaning up

sub DESTROY {
    print "Curtain-Call!\n"
}

1;