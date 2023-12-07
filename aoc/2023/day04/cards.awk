#!/usr/bin/awk -f

      { s += ++a[NR]; for (i = NR+1; i <= NR+NF; i++) a[i] += a[NR] }
  END { print s }
