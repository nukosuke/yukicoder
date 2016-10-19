use v6;

my $S = get();
my $count = 0;

for 1..8 {
  my @B = get().split('');
  for 1..8 {
    if @B[$_] ne '.' {
      $count++;
    }
  }
}

given $S {
  when 'oda' { say ($count % 2 == 0 ?? 'oda' !! 'yukiko') }
  when 'yukiko' { say ($count % 2 == 0 ?? 'yukiko' !! 'oda') }
}
