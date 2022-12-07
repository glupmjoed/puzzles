#!/bin/bash

./du.pl | awk ' $1 <= 1e5 { s += $1 } END { print s }'
