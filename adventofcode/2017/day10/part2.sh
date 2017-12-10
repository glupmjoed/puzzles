#!/bin/bash

cat <(printf "%s" "$(cat)" | od -A n -t d1) <(echo "17, 31, 73, 47, 23") > lengths

printf 'cat lengths; %.0s' {1..64} | bash | ./hash.sh |

	awk 'BEGIN {print "echo printf \\\"%.2x\\\" \\\"$(("}
         NR%16!=0&&NR<256 { print $1 " ^"}
         NR%16==0&&NR<256 { print $1 "))\\\" \\\"$(("}
         END { print $1 "))\\\""}' |

	bash | bash && echo; rm -f lengths
