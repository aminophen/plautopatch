KANJI = -kanji=utf8
FONTMAP = -f ipaex.map -f ptex-ipaex.map
TEXMF = $(shell kpsewhich -var-value=TEXMFHOME)

all: plautopatch.pdf plautopatch-ja.pdf

.SUFFIXES: .tex .dvi .pdf
.tex.dvi:
	platex $(KANJI) $<
	platex $(KANJI) $<
	rm *.aux *.log
.dvi.pdf:
	dvipdfmx $(FONTMAP) $<

.PHONY: install clean
install:
	mkdir -p ${TEXMF}/doc/platex/plautopatch
	cp ./Makefile ${TEXMF}/doc/platex/plautopatch/
	cp ./LICENSE ${TEXMF}/doc/platex/plautopatch/
	cp ./README.md ${TEXMF}/doc/platex/plautopatch/
	cp ./*.pdf ${TEXMF}/doc/platex/plautopatch/
	cp ./*.tex ${TEXMF}/doc/platex/plautopatch/
	mkdir -p ${TEXMF}/tex/platex/plautopatch
	cp ./*.sty ${TEXMF}/tex/platex/plautopatch/
clean:
	rm -f *.dvi *.pdf
