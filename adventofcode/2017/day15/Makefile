all: bin/judge1 bin/judge2

bin/judge1: judge1.go
	mkdir -p bin
	go build -o bin/judge1 judge1.go

bin/judge2: judge2.go
	mkdir -p bin
	go build -o bin/judge2 judge2.go

.PHONY: clean

clean:
	rm -rf bin *~
