all: bin/hash

bin/hash: hash.go
	go build -o bin/hash hash.go

.PHONY: all clean

clean:
	rm -rf bin *~
