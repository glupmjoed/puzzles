package main

import (
	"fmt"
	"math/bits"
)

var mx int64
var cache, ix uint64
var m map[int64]uint64

func left() {
	if ix > 0 {
		ix--
		return
	}
	m[mx] = cache
	mx--
	cache = m[mx]
	ix = 0x3f
}

func right() {
	if ix < 0x3f {
		ix++
		return
	}
	m[mx] = cache
	mx++
	cache = m[mx]
	ix = 0x0
}

// Add the output of transpile_main.awk below before compiling:
