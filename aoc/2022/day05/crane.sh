#!/usr/bin/env sh

sed 's/[][]/ /g; s/    / _ /g' | ./reshape.awk | ./sim.pl -k="$1"
