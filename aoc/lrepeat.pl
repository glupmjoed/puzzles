#!/usr/bin/perl -F -lns

my %s; $s{$_}++ for @F;
print grep { $s{$_} =~ /\Q$r\E/ } keys %s;
