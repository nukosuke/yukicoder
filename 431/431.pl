#!/usr/bin/perl

$line = <>;
($D_1, $D_2, $D_3, $S) = split /\s/, $line;

print((($D_1+$D_2+$D_3 < 2) || $S) ? "SURVIVED" : "DEAD");
