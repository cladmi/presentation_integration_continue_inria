TEX2PDF		=pdflatex
TEX2PDF_OPTS	=-halt-on-error
TEX		=latex
DVI2PS		=dvips

###

.PHONY: FORCE
all : example_en.pdf

example_en.pdf : FORCE
example_en.dvi : FORCE
example_en.ps  : FORCE

###
# %.dvi : %.tex is already defined by GNU/Make
#
%.pdf : %.tex
	$(TEX2PDF) $(TEX2PDF_OPTS) $< && $(TEX2PDF) $<

%.ps : %.dvi
	$(DVI2PS) $<


clean:
	$(RM) *~ *.pdf *.dvi *.ps
	$(RM) *.aux *.nav *.toc *.log *.snm *.out


