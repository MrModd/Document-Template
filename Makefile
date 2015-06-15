LATEX = pdflatex
BIBTEX = bibtex

TEXFILES=$(wildcard *.tex)
BIBFILES=$(wildcard *.bib)
IMAGES=$(wildcard images/*.png)
SOURCES=$(wildcard sources/*.*)

index.pdf: $(TEXFILES) $(IMAGES) $(SOURCES) index.bbl
	$(LATEX) -halt-on-error -jobname index index
	$(LATEX) -halt-on-error -jobname index index

index.bbl: $(BIBFILES)
	$(LATEX) -halt-on-error -jobname index index
	$(BIBTEX) index

clean:
	rm -f *.aux *.log *.nav *.out *.snm *.synctex.gz *.toc *.bbl *.blg *.pdf