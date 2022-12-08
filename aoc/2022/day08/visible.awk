#!/usr/bin/awk -f

{
    split($1, r, "")
    h = -1
    for (i in r) {
        if (r[i] > h) {
            h = r[i]
            print $2 "," $3
        }
        $2 += $4
        $3 += $5
    }
}
