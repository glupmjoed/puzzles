#!/bin/bash

while read -r s; do n=${#s}; echo -e "${s:0:$n/2}\n${s:$n/2}"; done |
    ./lsort_uniq | paste - - |
    perl -F'\t' -lne 'print $F[0] =~ s/[^\Q$F[1]\E]//gr' |
    ./prio.pl | paste -sd+ | bc
