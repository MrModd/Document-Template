LATEX = pdflatex

TEXFILES=$(wildcard *.tex)
IMAGES=$(wildcard images/*.png)
SOURCES=$(wildcard sources/*.*)

Document.pdf: $(TEXFILES) $(IMAGES) $(SOURCES)
	$(LATEX) -halt-on-error -jobname Document index.tex
	$(LATEX) -halt-on-error -jobname Document index.tex
	$(LATEX) -halt-on-error -jobname Document index.tex

clean:
	rm -f *.aux *.log *.nav *.out *.snm *.synctex.gz *.toc *.pdf
