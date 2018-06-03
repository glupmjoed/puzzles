             BEGIN { print "graph g {" }
/^[0-9]+\/[0-9]+$/ { printf "\tn%s -- n%s\n", $1, $2 }
               END { print "}" }
