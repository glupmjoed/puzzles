package main

import (
	"crypto/md5"
	"fmt"
)

func main() {
	var id string
	fmt.Scanf("%s", &id)
	for i := 0; ; i++ {
		s := md5.Sum([]byte(fmt.Sprintf("%s%d", id, i)))
		if s[0]|s[1] == 0x00 && s[2] <= 0x0f {
			fmt.Printf("%x\n", s)
		}
	}
}
