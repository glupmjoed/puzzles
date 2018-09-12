package main

import "fmt"

func main() {
	var n int
	var s string
	fmt.Scanf("%d\n%s", &n, &s)

	var in, out, first chan int8
	first = make(chan int8, len(s))
	in = first
	go func() {
		for i := 0; i < len(s); i++ {
			first <- int8(s[i] - '0')
		}
		first <- 0
	}()
	for i := 0; i < n; i++ {
		out = make(chan int8, 512)
		go lookAndSay(in, out)
		in = out
	}

	length := 0
	for v := range out {
		if v == 0 {
			break
		}
		length++
	}
	fmt.Println(length)
}

func lookAndSay(in, out chan int8) {
	last := <-in
	count := int8(1)
	for v := range in {
		if v != last {
			out <- count
			out <- last
			if v == 0 {
				out <- 0
				return
			}
			last = v
			count = 1
		} else {
			count++
		}
	}
}
