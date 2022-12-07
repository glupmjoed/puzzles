#!/usr/bin/perl -F/\s+/ -l

$F[2] eq '..' ? pop @dirs : push @dirs, $F[2] and next if /^\$ cd/;
next unless /^\d+/;
my $p = '';
$s{$_} += $F[0] for map { $p = join($p eq '/' ? '' : '/', $p || (), $_) } @dirs;

END { print "$s{$_}\t$_" for keys %s }
