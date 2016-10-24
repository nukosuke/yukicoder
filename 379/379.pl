my ($N, $G, $V) = map { $_+0 } split ' ', <>;
printf("%.11f\n", int($N / 5) * $G / $V);
