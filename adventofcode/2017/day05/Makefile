all: bin/maze

bin/maze: maze.c
	mkdir -p bin
	gcc -std=c11 -o bin/maze maze.c

.PHONY: all clean

clean:
	rm -rf bin *~
