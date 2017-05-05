#!/usr/bin/env perl
#use Math::BigFloat;

use v5.10;
use strict;
use common::sense;
use subs qw(point);

my $datapoints = 16384;

my $timebase = 1/4000;
my $voltage = 5;
my $offset = 0;
my $phase = 0;

# print file header
say "data length,", $datapoints;
say "frequency," . 1/$timebase;
say "amp," . sprintf('%8f',$voltage);
say "offset," . sprintf('%8f',$offset);
say "phase," . sprintf('%8f',$phase);
print "\n" x 7; # for some reason their software generates 7 newlines after header
say "xpos,value";

# calculate step size

my $stepsize= $timebase / $datapoints;
my $timepoint = 0;
my $step = 0;
my $us = 1 / 1000 / 1000;


sub point {
    say sprintf('%e,',$step * $stepsize) . sprintf("%8f",$_[0]);
    ++$step;
    if ($step > $datapoints) {
        say STDERR "generation exceeded memory size!";
        exit 0;
        }
}

sub point_length_us {
    my $t = shift;
    my $count = int( ($t*$us) / $stepsize);
    if ($count < 1) {
        return 1
    } else {
        return $count
    }
}

sub high_us {
    my $points = point_length_us(shift);
    for (my $a = 0; $a < $points; $a++) {
        point(1);
    }

}
sub low_us {
    my $points = point_length_us(shift);
    for (my $a = 0; $a < $points; $a++) {
        point(0);
    }

}

sub pixel_low {
    high_us(0.35);
    low_us(0.8);
}

sub pixel_high {
    high_us(0.7);
    low_us(0.6);
}

sub pixel_reset {
    low_us(70);
}

my @data = (
    255 ,0 ,0,
    0, 255, 0,
    0, 0 , 255,
    100, 100 , 100,
    100, 0 , 100,
    100, 0  , 0,
);

for my $byte (@data) {
    if ($byte > 255 || $byte < 0) {exit 4}
    my $bits = sprintf("%08b",int($byte));
    for my $bit (split(//,$bits)) {
        if ($bit == 0) {
            pixel_low()
        } elsif ($bit == 1) {
            pixel_high()
        }
    }
}
pixel_reset();
my $remaining = ($datapoints - $step);

say STDERR "remaining steps " .  ($datapoints - $step) . " zero-filling";

for (my $a = 0 ; $a < $remaining ; $a++ ) {
    point(0);
}
