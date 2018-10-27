all: bin/iteration5
	$(MAKE) -C ../day18 --no-print-directory

bin/iteration5: iteration5.c
	mkdir -p bin
	gcc -std=c11 -o bin/iteration5 iteration5.c

.PHONY: clean

clean:
	rm -rf bin *~
