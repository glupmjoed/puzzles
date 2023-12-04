#!/usr/bin/perl -lp

@d = qw(_ one two three four five six seven eight nine);

for $i (1 .. 9) { pos()-- if s/($d[$i])/$1$i$1/g }
