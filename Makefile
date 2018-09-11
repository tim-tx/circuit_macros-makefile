CIRCUIT_MACROS=/usr/share/texmf-dist/circuit_macros

SRC=$(wildcard *.m4)
TIKZ_FILES=$(SRC:.m4=.tikz)
PIC_FILES=$(SRC:.m4=.pic)

all: $(TIKZ_FILES)

$(TIKZ_FILES): %.tikz: %.pic
	dpic -g $^ > $@

$(PIC_FILES): %.pic: %.m4
	m4 -I $(CIRCUIT_MACROS) pgf.m4 liblog.m4 $^ > $@

clean:
	rm -f $(TIKZ_FILES) $(PIC_FILES)
