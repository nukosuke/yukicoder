#!/usr/bin/perl

$line = <>;
chomp $line;
($S, $F) = split /\s/, $line;

print int($S / $F) + 1;
