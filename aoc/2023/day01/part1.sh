#!/usr/bin/bash

tr -cd "0-9\n" | awk -F '' '{ s += $1*10 + $NF } END { print s }'
