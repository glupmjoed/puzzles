all: bin/filter

bin/filter: filter.go
	mkdir -p bin
	go build -o bin/filter filter.go

.PHONY: clean

clean:
	rm -rf bin *~
