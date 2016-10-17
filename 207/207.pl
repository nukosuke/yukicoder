use v6;
my ($A, $B) = get().split(' ');
for Int($A)..Int($B) {
  say $_ if ($_ % 3 == 0) || Str($_).index('3').defined;
}
