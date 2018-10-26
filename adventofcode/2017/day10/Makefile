all: bin/sparse_hash

bin/sparse_hash: sparse_hash.c
	mkdir -p bin
	gcc -std=c11 -o bin/sparse_hash sparse_hash.c

.PHONY: clean

clean:
	rm -rf bin *~
