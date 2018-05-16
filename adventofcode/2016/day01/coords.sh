#!/bin/bash

sed -E 's/L/3/g; s/R/1/g; s/([31])([[:digit:]]+)[, ]*/\1 \2\n/g' |
	awk -f walk.awk
