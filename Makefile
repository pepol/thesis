all: main.pdf

main.pdf: main.tex *.tex *.bib images/*
	pdflatex -shell-escape main
	bibtex main
	pdflatex -shell-escape main
	pdflatex -shell-escape main

clean:
	rm -f *.aux *.bbl *.blg *.lof *.log *.pdf *.toc

.PHONY: all clean
