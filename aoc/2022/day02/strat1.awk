#!/usr/bin/awk -f

        $1 == $2 { s += $2 + 3 }
$1 % 3 + 1 == $2 { s += $2 + 6 }
$2 % 3 + 1 == $1 { s += $2 }
             END { print s }
