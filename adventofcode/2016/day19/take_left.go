package main

import (
	"fmt"
	"math/bits"
)

func main() {
	var n uint32
	fmt.Scanf("%d", &n)
	fmt.Println((n << 1) - (1 << (uint(bits.Len32(n)))) + 1)
}
