package main

import (
	"fmt"
	"io/ioutil"
	"os"
	"strings"
)

func main() {
	input, _ := ioutil.ReadAll(os.Stdin)
	lines := strings.Split(string(input), "\n")
	var row, col, dir int
	col, dir = strings.Index(lines[row], "|"), 1
	defer fmt.Println()
	for val := byte('|'); ; {
		// vertical walk
		for val != ' ' {
			fmt.Printf("%c", val)
			row += dir
			val = lines[row][col]
		}
		row -= dir
		val = lines[row][col]
		// horizontal walk
		switch {
		case lines[row][col+1] != ' ':
			end := strings.Index(lines[row][col+1:], " ")
			fmt.Printf("%s", lines[row][col+1:col+end+1])
			col += end
		case lines[row][col-1] != ' ':
			beg := strings.LastIndex(lines[row][:col], " ")
			printBytesReverse(lines[row][beg+1 : col])
			col = beg + 1
		default:
			return
		}
		switch {
		case lines[row+1][col] != ' ':
			dir, row, val = 1, row+1, lines[row+1][col]
		case lines[row-1][col] != ' ':
			dir, row, val = -1, row-1, lines[row-1][col]
		default:
			return
		}
	}
}

func printBytesReverse(s string) {
	for i := len(s) - 1; i >= 0; i-- {
		fmt.Printf("%c", s[i])
	}
}
