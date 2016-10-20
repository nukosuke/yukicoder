my ($a, $b) = map { $_ + 0 } split ' ', <>;
print(($b % $a > 0 ? int($b/$a)+1 : int($b/$a))."\n");
