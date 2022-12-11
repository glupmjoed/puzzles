#!/usr/bin/env sh

grep -oP '(\d+, |[+*] )*(\d+|old)$' | tr -d ' ' | paste - - - - - |
    ./sim.pl -xdiv="$1" -rounds="$2"
