all: bin/checksum

bin/checksum: checksum.c
	mkdir -p bin
	gcc -std=c11 -o bin/checksum checksum.c

.PHONY: clean

clean:
	rm -rf bin *~
