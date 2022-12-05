#!/usr/bin/awk -f

/^ [_A-Z]/ { print | (c = "tac | rs -T") }
       !$0 { close(c) }
      /^m/ { print $2 " " $4 " " $6 }
