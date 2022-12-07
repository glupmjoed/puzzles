#!/usr/bin/awk -f

$2 == "/" { min = $1 + 3e7 - 7e7 }
          { a[$2] = $1  }
      END { for (k in a) { if (a[k] >= min) { print a[k] } } }
