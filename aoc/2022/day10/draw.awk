#!/usr/bin/awk -f

    { $1 %= 40; printf ($1 < $3 || $1 > $3+2 ? "." : "#") }
!$1 { print "" }
