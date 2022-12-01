#!/usr/bin/awk -f

    { acc += $1+$1+$2+$2 + $1*$2*$3 }
END { print acc }
