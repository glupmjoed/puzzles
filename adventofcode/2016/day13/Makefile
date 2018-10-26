all: bin/explore

bin/explore: explore.go
	mkdir -p bin
	go build -o bin/explore explore.go

.PHONY: clean

clean:
	rm -rf bin *~
