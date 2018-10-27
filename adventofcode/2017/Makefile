DAYS := $(wildcard day*)

all:

clean:
	rm -f *~
	@for day in $(DAYS); do $(MAKE) clean -C $$day --no-print-directory; done

.PHONY: all clean
