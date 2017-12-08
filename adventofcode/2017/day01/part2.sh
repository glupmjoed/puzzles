#!/bin/bash

split -l $(($(cat | grep -o . | tee tmp | wc -l) / 2)) tmp

cat xaa | paste - xab | sed -rn 's/([0-9]).*\1/\1+\1+/p' | tr -d '\n' |
	echo $(($(cat)0))

rm -f tmp xaa xab
