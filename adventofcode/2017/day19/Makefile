all: bin/walk

bin/walk: walk.go
	mkdir -p bin
	go build -o bin/walk walk.go

.PHONY: all clean

clean:
	rm -rf bin *~
