#!/bin/bash

sed -E 's/[0-9]+/n&/g' | awk -F "/" 'BEGIN { print "graph m {" }
                                           { printf "\t%s -- %s\n", $1, $2 }
                                       END { print "}" }'
