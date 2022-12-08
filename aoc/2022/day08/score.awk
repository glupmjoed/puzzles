#!/usr/bin/awk -f

{
    n = split($1, r, "")
    for (i in r) {
        c = $2 "," $3
        a[c] += !a[c]
        if ($2 > 1 && $2 < n && $3 > 1 && $3 < n) {
            for (j = i-1; r[j] < r[i] && j > 1; j--);
            for (k = i+1; r[k] < r[i] && k < n; k++);
            a[c] *= (i-j) * (k-i)
        }
        $2 += $4
        $3 += $5
    }
}

END { for (c in a) { print a[c] } }
