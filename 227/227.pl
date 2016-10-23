sub trans {
  my ($state, $stack_size) = @_;
  if    ($state eq "NO HAND"    && $stack_size == 2) { return "ONE PAIR";   }
  elsif ($state eq "NO HAND"    && $stack_size == 3) { return "THREE CARD"; }
  elsif ($state eq "ONE PAIR"   && $stack_size == 3) { return "FULL HOUSE"; }
  elsif ($state eq "ONE PAIR"   && $stack_size == 2) { return "TWO PAIR";   }
  elsif ($state eq "THREE CARD" && $stack_size == 2) { return "FULL HOUSE"; }
  else  { return $state; }
}

my @A = sort { $a <=> $b } map { $_ + 0 } split ' ', <>;
my $state = "NO HAND";
my @stack = ();

foreach (@A) {
  # print "push=$_, state=[$state]--([".(join ' ', @stack)."])";
  if ($#stack >= 0 && $_ != $stack[$#stack]) {
    $state = trans($state, $#stack+1);
    @stack = ();
  }
  push @stack, $_;
  # print "-->[$state], stack=[" . (join ' ', @stack) . "]\n";
}
print(trans($state, $#stack+1) . "\n");
