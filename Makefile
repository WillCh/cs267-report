
type = report
output = report

all: $(type).pdf	
	cp $(type).pdf ~/Desktop/$(output).pdf

$(type).pdf: $(type).tex $(type).bib
	pdflatex $(type)
	bibtex $(type)
	pdflatex $(type)
	pdflatex $(type)

clean:
	-rm -f $(type).aux $(type).dvi $(type).log $(type).pdf  $(type).ps $(type).bbl $(type).blg
