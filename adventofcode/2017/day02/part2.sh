#!/bin/bash

sed -r 's/[ \t]+/,/g; s/[0-9]+/&-/g; s/(.*)/echo {\1}{\1}/g;' |
	bash | ./sum_div.py
