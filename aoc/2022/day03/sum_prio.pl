#!/usr/bin/perl -ln

$s += ord() - (/[a-z]/ ? 96 : 38);
END { print $s }
