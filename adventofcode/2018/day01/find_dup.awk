#!/usr/bin/awk -f

   BEGIN { has[0] = 1 }
         { acc += $1 }
has[acc] { print acc; exit }
         { has[acc] = 1 }
