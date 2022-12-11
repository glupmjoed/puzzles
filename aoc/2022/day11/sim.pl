#!/usr/bin/perl -F/\s+/ -ls

my $op = "old$F[1]";
$sub = sub { $x = shift; return eval $op =~ s/old/$x/ger };
push @divs, $F[2];
push @ms, [ [split(/,/, $F[0])], $sub, @F[2..4], 0 ];

END {
    $mult = eval join('*', @divs);

    while ($rounds--) {
        for my $m (@ms) {
            while ($item = shift $m->[0]->@*) {
                $item = int(($m->[1]->($item) % $mult) / $xdiv);
                push $ms[ $m->[$item % $m->[2] ? 4 : 3] ]->[0]->@*, $item;
                $m->[5]++;
            }
        }
    }
    ($x, $y) = sort { $b <=> $a } map { $_->[5] } @ms;
    print $x * $y;
}
