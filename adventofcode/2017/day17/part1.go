package main

import "fmt"

type elem struct {
	next *elem
	val  int
}

func main() {
	var n int
	fmt.Scanf("%d", &n)
	buf := &elem{}
	buf.next = buf
	var buflen int
	for buflen = 1; buflen <= 2017; buflen++ {
		for steps := n % buflen; steps > 0; steps-- {
			buf = buf.next
		}
		e := &elem{next: buf.next, val: buflen}
		buf, buf.next = e, e
	}
	fmt.Println(buf.next.val)
}
