package main

import (
	"fmt"
	"math/bits"
)

type tile struct {
	x, y uint32
}

type area map[tile]bool

var i, n uint32
var path, edge, next area

func main() {
	fmt.Scanf("%d", &n)
	path, next = area{}, area{}
	for log(tile{1, 1}); ; i++ {
		edge, next = next, area{}
		for t, _ := range edge {
			for _, nb := range neighbours(t) {
				switch _, mapped := path[nb]; {
				case mapped:
					continue
				case isWall(nb):
					path[nb] = false
				default:
					log(nb)
				}
			}
		}
	}
}

func isWall(t tile) bool {
	return bits.OnesCount32(t.x*t.x+3*t.x+2*t.x*t.y+t.y+t.y*t.y+n)&1 == 1
}

func log(t tile) {
	path[t] = true
	next[t] = true
	fmt.Println(i+1, t.x, t.y)
}

func neighbours(t tile) []tile {
	nb := make([]tile, 2, 4)
	nb[0], nb[1] = tile{t.x + 1, t.y}, tile{t.x, t.y + 1}
	if t.x != 0 {
		nb = append(nb, tile{t.x - 1, t.y})
	}
	if t.y != 0 {
		nb = append(nb, tile{t.x, t.y - 1})
	}
	return nb
}
