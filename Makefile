.PHONY: project.pdf all clean

all: project.pdf

project.pdf: project.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make project.tex

clean:
	latexmk -CA
