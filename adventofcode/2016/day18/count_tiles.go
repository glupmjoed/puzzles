package main

import (
	"fmt"
	"math/bits"
)

func main() {
	var l, r, lpad, rpad uint64
	var pop, rows int
	fmt.Scanf("%d%b%b", &rows, &l, &r)
	for i := 0; i < rows; i++ {
		pop += bits.OnesCount64(l) + bits.OnesCount64(r)
		lpad, rpad = l<<63, r>>63
		l, r = (l>>1)^((l<<1)&(1<<36-1)|rpad), ((r>>1)|lpad)^(r<<1)
	}
	fmt.Println(rows*100 - pop)
}
