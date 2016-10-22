my $N   = <> + 0;
for (1..$N) {
  my ($G, $D) = map { $_ + 0 } split ' ', <>;
  if (($G - 30000 * $D) * 6 >= 3000000) {
    print "YES\n";
    print("$_\n" x 6);
    exit(0);
  }
}
print "NO\n";
