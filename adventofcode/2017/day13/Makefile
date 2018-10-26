all: bin/calc_delay

bin/calc_delay: calc_delay.c
	mkdir -p bin
	gcc -std=c11 -o bin/calc_delay calc_delay.c

.PHONY: clean

clean:
	rm -rf bin *~
