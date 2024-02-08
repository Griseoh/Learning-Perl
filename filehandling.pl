#!/usr/bin/env perl

use strict;
use warnings;
use feature qw/ say /;

use Data::Dumper;

open ( my $FH, '>', './codex.txt');     # Opening a file in write mode with a file handle

print $FH "Good Evening\n";

close( $FH );                           # Closing the file handle

open (  my $FH, '>>', './codex.txt');   # Opening in append mode

print $FH "A meticulous criminal psychopath\n";
print $FH "is on a rampage near western Ionia\n";
print $FH "Travellers are issued with a word of caution\n";
print $FH "Take care\n";

close ( $FH );

open ( my $FH, '<', './codex.txt');     # Opening in read mode

my $content = do{             # do block returns the read contents back to the assigned variable
    local $/; <$FH>;          # in do block we define our logics to be executed in an isolated scope
};                            # by $/ we set EOL to be undefined to read the whole text file

close $FH;

say $content;

# We can also read a larger file with the use of While loop:

open ( my $FH, '<', './codex.txt');     # Opening in read mode

my $content = '';
while( defined( my $line = <$FH> ) ) {
    $content .=$line;
}

close $FH;

say $content;

1;