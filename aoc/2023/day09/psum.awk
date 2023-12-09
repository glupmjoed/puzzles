#!/usr/bin/awk -f

{
    for (e = NF; e-- > 1 && !d; d = 0) {
        for (i = 1; i <= e; i++) if ($i = $(i+1)-$i) d = 1;
    }
    while (e <= NF) s += $(e++)
}

END { print s }
