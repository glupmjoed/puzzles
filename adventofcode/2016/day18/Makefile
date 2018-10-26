all: bin/count_tiles

bin/count_tiles: count_tiles.go
	mkdir -p bin
	go build -o bin/count_tiles count_tiles.go

.PHONY: clean

clean:
	rm -rf bin *~
