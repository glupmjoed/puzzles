#!/usr/bin/perl -ln

s/[^][\d,]//g;
push @pkgs, eval;

push @m1s, $./3 if $.%3 == 0 && compare(@pkgs[$.*2/3-2, $.*2/3-1]) == -1;

END {
    for my $pkg (sort { compare($a, $b) } (@pkgs, [[2]], [[6]])) {
        $i++;
        push @divs, $i if !compare($pkg, [[2]]) || !compare($pkg, [[6]]);
    }
    print join('+', @m1s) . "\n" . join('*', @divs);
}

sub compare {
    my ($l, $r) = @_;
    return $l <=> $r         unless ref $l || ref $r;
    return compare([$l], $r) unless ref $l;
    return compare($l, [$r]) unless ref $r;

    for (my $i = 0; $i < @$l && $i < @$r; $i++) {
        return $cmp if $cmp = compare($l->[$i], $r->[$i]);
    }
    return @$l <=> @$r;
}
