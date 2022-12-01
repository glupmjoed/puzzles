#!/usr/bin/awk -f

/^$/ { print a; a = 0 }
     { a += $0 }
END  { print a }
