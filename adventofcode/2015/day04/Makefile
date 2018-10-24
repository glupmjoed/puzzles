all: bin/hash

bin/hash: hash.go
	go build -o bin/hash hash.go

.PHONY: clean

clean:
	rm -rf bin *~
