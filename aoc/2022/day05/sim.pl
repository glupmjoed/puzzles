#!/usr/bin/perl -F/\s+/ -ls

BEGIN { $s = sub { $k ? reverse @_ : @_ } }

push @stacks, [grep { /[A-Z]/ } @F] and next if $F[0] =~ /\D/;

push $stacks[$F[2]-1]->@*, $s->( map { pop $stacks[$F[1]-1]->@* } (1..$F[0]) );

END { print map { $_->[-1] } @stacks }
