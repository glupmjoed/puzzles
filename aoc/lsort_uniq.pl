#!/usr/bin/perl -F -ln

my %s;
print grep { !$s{$_}++ } sort @F;
