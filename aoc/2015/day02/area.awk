#!/usr/bin/awk -f

    { acc += 3*$1*$2 + 2*$1*$3 + 2*$2*$3 }
END { print acc }
