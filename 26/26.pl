my ($N, $M) = (<>+0, <>+0);
for (1..$M) {
  my ($P, $Q) = map { $_+0 } split ' ', <>;
  ($N, $Q) = ($Q, $P) if $N == $P;
  ($N, $P) = ($P, $Q) if $N == $Q;
}
print($N . "\n");
