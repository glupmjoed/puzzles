#!/usr/bin/perl -F/\s+/ -l

my %s;
print join(' ', map { $s{$_}++ ? $_ : () } sort @F);
