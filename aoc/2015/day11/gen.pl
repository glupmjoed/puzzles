my $inc3 = join("|", map { sprintf "%s%s%s", $_++, $_++, $_ } ("a" .. "x"));

for (my $s = "KEY"; $i < 2; $s++) {
    next unless $s =~ /$inc3/ && $s =~ /(.)\1.*(.)\2/ && $s !~ /[ilo]/;
    print "$s\n";
    $i++;
}
