all: bin/inc3filter

bin/inc3filter: inc3filter.go
	mkdir -p bin
	go build -o bin/inc3filter inc3filter.go

.PHONY: all clean

clean:
	rm -rf bin *~
