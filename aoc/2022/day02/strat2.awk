#!/usr/bin/awk -f

$2 != 3 { $1 = ($1 + !$2) % 3 + 1 }
        { s += $1 + $2 }
    END { print s }
