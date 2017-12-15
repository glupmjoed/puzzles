package main

import "fmt"

func main() {
	var sA, sB, m uint64
	fmt.Scanf("%d\n%d", &sA, &sB)
	a, b := make(chan uint64, 64), make(chan uint64, 64)
	go generator(sA, 16807, 4, a)
	go generator(sB, 48271, 8, b)
	for i := 0; i < 5000000; i++ {
		if 0xffff&<-a == 0xffff&<-b {
			m++
		}
	}
	fmt.Println(m)
}
func generator(prev, fact, div uint64, judge chan uint64) {
	for {
		prev = prev * fact % 2147483647
		if prev%div == 0 {
			judge <- prev
		}
	}
}
