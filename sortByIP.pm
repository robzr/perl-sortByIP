package sortByIP;

sub ByIP {
  my @a = split(/\./, $a);
  my @b = split(/\./, $b);
  map { $a[$_] == $b[$_] || return $a[$_] <=> $b[$_] } (0..3);
}

sub ByIPold {   # to use sort byip @ips syntax
  my @a = split(/\./, $a);
  my @b = split(/\./, $b);
  map { $a[$_] == $b[$_] || return $a[$_] <=> $b[$_] } (0..2);
  return $a[3] <=> $b[3];
}

sub doit { shift ; return sort ByIPold @_ }
1;
