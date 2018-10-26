all: bin/take_left

bin/take_left: take_left.go
	mkdir -p bin
	go build -o bin/take_left take_left.go

.PHONY: clean

clean:
	rm -rf bin *~
