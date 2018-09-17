package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	s := bufio.NewScanner(os.Stdin)
	for s.Scan() && len(s.Bytes()) > 0 {
		c := 1
		last := s.Bytes()[0]
		for _, b := range s.Bytes()[1:] {
			if b-1 == last {
				c++
				if c == 3 {
					fmt.Printf("%s\n", s.Bytes())
					break
				}
			} else {
				c = 1
			}
			last = b
		}
	}
}
