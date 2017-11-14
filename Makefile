SRC=$(wildcard *.tex)
OPTS=--pdf --into=_build


.PHONY: clean

all: $(patsubst %.tex,%.pdf,$(SRC))

%.pdf: %.tex
	@rubber $(OPTS) $<

clean:
	@rubber --clean $(OPTS) $(SRC)
