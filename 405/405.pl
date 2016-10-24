my ($S1, $T) = split ' ', <>;
my @S = ("I","II","III","IIII","V","VI","VII","VIII","IX","X","XI","XII");
my ($i) = grep { $S[$_] eq $S1 } 0 .. $#S;
print($S[($i+$T)%12] . "\n");
