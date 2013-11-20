DOCUMENT     = presentation_integration_continue
THEME_FOLDER = inria-doc-style
OBJS_FOLDER  = bin

###

TEX2PDF		=pdflatex
TEX2PDF_OPTS	=-halt-on-error

###

all : $(DOCUMENT).pdf
.PHONY: FORCE

%.pdf : %.tex  $(OBJS_FOLDER) FORCE
	TEXINPUTS=".:$(THEME_FOLDER):" $(TEX2PDF) $(TEX2PDF_OPTS) --output-directory=$(OBJS_FOLDER) $<
	cp $(OBJS_FOLDER)/$@ $@


$(OBJS_FOLDER):
	mkdir $(OBJS_FOLDER)
clean:
	$(RM) *.pdf
	$(RM) -r $(OBJS_FOLDER)


