package main

import "fmt"

func main() {
	var pos, post0, steps int
	fmt.Scanf("%d", &steps)
	for i := 1; i <= 50000000; i++ {
		if pos = (pos+steps)%i + 1; pos == 1 {
			post0 = i
		}
	}
	fmt.Println(post0)
}
