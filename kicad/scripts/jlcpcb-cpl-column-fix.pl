#!/usr/bin/perl

while(<>) {
    if ($_ =~ /^Ref,/) {
        s/Ref/Designator/gi;
        s/PosX/Mid X/gi;
        s/PosY/Mid Y/gi;
        s/Rot/Rotation/gi;
        s/Side/Layer/gi;
    }
    print $_;
}
