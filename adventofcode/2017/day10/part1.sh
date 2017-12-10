#!/bin/bash

sz=256

seq 0 $(($sz-1)) > list1

grep -oE "[0-9]+" |
	while read -r len
	do cat <(tail -$(($sz-$((pos)))) list1) <(head -$((pos)) list1) > list2
	   cat <(head -$len list2 | tac) <(tail -$(($sz-$len)) list2) > list3
	   cat <(tail -$((pos)) list3) <(head -$(($sz-$((pos)))) list3) > list1
	   ((pos=($pos+$len+$((shift++)))%$sz))
	done

echo $(($(head -2 list | tr '\n' '*')1)); rm -f list[1-3]
