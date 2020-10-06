TESTINPUTS := $(wildcard *.tex)
TESTOUTPUTS := $(patsubst %.tex,%-test.pdf,$(TESTINPUTS))
PLATEX = platex
DVIPDFMX = dvipdfmx

.PHONY: test cleanup
test: $(TESTOUTPUTS)

%.pdf:
	$(PLATEX) -jobname=$* $(patsubst %-test,%,$*).tex
	$(PLATEX) -jobname=$* $(patsubst %-test,%,$*).tex
	$(PLATEX) -jobname=$* $(patsubst %-test,%,$*).tex
	$(DVIPDFMX) $*.dvi

clean:
	rm -f *-test.dvi *-test.log *-test.aux *-test.toc *-test.out *-test.pdf
