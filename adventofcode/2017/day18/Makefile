all: bin/simulate

bin/simulate: simulate.go
	mkdir -p bin
	go build -o bin/simulate simulate.go

.PHONY: clean

clean:
	rm -rf bin *~
