my $L = <>+0;
<>;
my @W = sort { $a <=> $b } map { $_ + 0 } split ' ', <>;
my $count = 0;
my $size  = 0;

while ($#W+1 > 0) {
  $size += shift @W;
  if ($size > $L) { last; }
  $count++;
}
print($count."\n");
