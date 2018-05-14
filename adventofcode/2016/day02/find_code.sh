#!/bin/bash

prev=$1
while read -r ins
do ins=$prev$ins
   while [ ${#ins} -gt 1 ]; do ins=$(echo $ins | sed -Ef $2); done
   prev=$ins; echo $ins
done | tr -d '\n' && echo
