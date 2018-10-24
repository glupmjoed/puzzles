all: bin/filter

bin/filter: filter.go
	mkdir -p bin
	cd bin; go build ../filter.go

.PHONY: clean

clean:
	rm -rf bin *~
