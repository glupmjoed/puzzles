all: bin/filter

bin/filter: filter.go
	mkdir -p bin
	go build -o bin/filter filter.go

.PHONY: all clean

clean:
	rm -rf bin *~
