package main

import (
	"fmt"
	"strings"
)

var (
	bots map[string]bot
	log  chan string
)

func init() {
	bots = make(map[string]bot)
	log = make(chan string)
}

func main() {
	var a [6]string
	for {
		n, _ := fmt.Scanf("%s", &a[0])
		if n != 1 {
			for _ = range bots {
				fmt.Print(<-log)
			}
			return
		}
		switch a[0] {
		case "bot":
			fmt.Scanf("%s gives low to %s %s and high to %s %s\n",
				&a[1], &a[2], &a[3], &a[4], &a[5])
			go mkbot(a[:2]).connect(mkbot(a[2:4]), mkbot(a[4:6]))
		case "value":
			fmt.Scanf("%d goes to %s %s\n", &n, &a[2], &a[3])
			go mkbot(a[2:4]).bootstrap(n)
		}
	}
}

type bot struct {
	id string
	in chan int
}

func (b bot) connect(low, high bot) {
	v1, v2 := <-b.in, <-b.in
	if v1 > v2 {
		v1, v2 = v2, v1
	}
	log <- fmt.Sprintf("%s gives %d to %s and %d to %s\n",
		b.id, v1, low.id, v2, high.id)
	low.in <- v1
	high.in <- v2
}

func (b bot) bootstrap(val int) {
	log <- fmt.Sprintf("value %d goes to %s\n", val, b.id)
	b.in <- val
}

func mkbot(a []string) bot {
	b := bot{id: strings.Join(a, " ")}
	if cached, ok := bots[b.id]; ok {
		return cached
	}
	b.in = make(chan int, 2)
	bots[b.id] = b
	return b
}
