use v6;
my $N = get().Int;
my $K = get().Int;
my @n = ();

for 1..$N { @n.push(get().Int); }
@n = @n.sort({ $^a <=> $^b });

say @n.max() - @n.min();
