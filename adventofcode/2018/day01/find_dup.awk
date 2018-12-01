#!/usr/bin/awk -f

         { acc += $1 }
has[acc] { print acc; exit }
         { has[acc] = 1 }
