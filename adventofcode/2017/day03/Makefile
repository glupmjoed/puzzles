all: bin/find_distance

bin/find_distance: find_distance.c
	mkdir -p bin
	gcc -std=c11 -o bin/find_distance find_distance.c

.PHONY: clean

clean:
	rm -rf bin *~
