all: bin/zoom

bin/zoom: zoom.go
	mkdir -p bin
	go build -o bin/zoom zoom.go

.PHONY: all clean

clean:
	rm -rf bin *~
