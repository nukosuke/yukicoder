<>;
my @A = sort { $a <=> $b } map { $_+0 } split ' ', <>;
if (($#A+1) % 2 == 0) {
  my $i = ($#A+1) / 2;
  print(($A[$i] + $A[$i-1]) / 2 . "\n");
} else {
  my $i = ($#A+1) / 2;
  print($A[$i]."\n");
}
