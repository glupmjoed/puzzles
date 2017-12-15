package main

import "fmt"

func main() {
	var a, b, m uint64
	fmt.Scanf("%d\n%d", &a, &b)
	for i := 0; i < 40000000; i++ {
		if a, b = a*16807%2147483647, b*48271%2147483647; a&0xffff == b&0xffff {
			m++
		}
	}
	fmt.Println(m)
}
