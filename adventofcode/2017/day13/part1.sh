#!/bin/bash

sed -r "s/^([0-9]+): ([0-9]+)$/echo \$(((\1+$(($1)))%(\2*2-2)))+\1*\2+/g" |
	bash | grep "^0" | tr -d '\n' | echo $(cat)0 | bc
