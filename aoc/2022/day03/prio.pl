#!/usr/bin/perl -ln

print ord() - (/[a-z]/ ? 96 : 38);
