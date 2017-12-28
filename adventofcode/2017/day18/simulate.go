package main

import (
	"flag"
	"fmt"
	"io/ioutil"
	"os"
	"strconv"
	"strings"
	"time"
)

type regs map[string]int64

var h int64

func main() {
	input, _ := ioutil.ReadAll(os.Stdin)
	lines := strings.Split(string(input), "\n")
	lines = lines[:len(lines)-1]
	flag.Parse()

	switch flag.Arg(0) {

	case "1":
		play := make(chan int64)
		go func() {
			for {
				<-play
			}
		}()
		run(lines, 0, play, nil)
		fmt.Println("h:", h)

	case "2":
		c0to1, c1to0 := make(chan int64, 64), make(chan int64, 64)
		go run(lines, 0, c0to1, c1to0)
		run(lines, 1, c1to0, c0to1)
	}
}

func run(lines []string, id int64, snd, rcv chan int64) {
	r := regs{"p": id}

	for i := int64(0); 0 <= i && i < int64(len(lines)); i++ {

		args := strings.Split(lines[i], " ")

		switch args[0] {

		case "add":
			r[args[1]] += r.eval(args[2])

		case "jgz":
			if r.eval(args[1]) > 0 {
				i += r.eval(args[2]) - 1
			}

		case "jnz":
			if r.eval(args[1]) != 0 {
				i += r.eval(args[2]) - 1
			}

		case "mod":
			r[args[1]] %= r.eval(args[2])

		case "mul":
			r[args[1]] *= r.eval(args[2])
			fmt.Println("mul")

		case "rcv":
			select {
			case r[args[1]] = <-rcv:
				fmt.Printf("p%d rcv'd %d\n", id, r[args[1]])
			case <-time.After(1 * time.Second):
				return
			}

		case "set":
			r[args[1]] = r.eval(args[2])

		case "snd":
			arg1 := r.eval(args[1])
			select {
			case snd <- arg1:
				fmt.Printf("p%d sent %d\n", id, arg1)
			case <-time.After(1 * time.Second):
				return
			}

		case "sub":
			r[args[1]] -= r.eval(args[2])

		}
		h = r["h"]
	}
}

func (r regs) eval(arg string) int64 {
	if literal, err := strconv.ParseInt(arg, 0, 64); err == nil {
		return literal
	}
	return r[arg]
}
