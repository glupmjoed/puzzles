package main

import (
	"crypto/md5"
	"flag"
	"fmt"
	"strings"
)

func main() {
	flag.Parse()
	var id string
	fmt.Scanf("%s", &id)
	for i := 0; ; i++ {
		s := md5.Sum([]byte(fmt.Sprintf("%s%d", id, i)))
		if strings.HasPrefix(fmt.Sprintf("%x", s), flag.Arg(0)) {
			fmt.Println(i)
			return
		}
	}
}
