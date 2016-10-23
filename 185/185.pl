my $N = <>+0;
my ($X, $Y) = map { $_+0 } split ' ', <>;
my $answer = $Y - $X;

if ($answer <= 0) {
  print "-1\n";
  exit(0);
}

for (2..$N) {
  my ($X, $Y) = map { $_+0 } split ' ', <>;
  if ($Y - $X <= 0 || $Y - $X != $answer) {
    print "-1\n";
    exit(0);
  }
  $answer = $Y - $X;
}
print "$answer\n";
