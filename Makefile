.PHONY: long_assignment.pdf all clean

all: long_assignment.pdf

# LATEXMK RULE
# 	-pdf tells latexmk to generate PDF directly (instead of DVI).
# 	-pdflatex="" tells latexmk to call a specific backend with specific options.
# 	-use-make tells latexmk to call make for generating missing files.
# 	-interaction=nonstopmode keeps the pdflatex backend from stopping at a
#       missing file reference and interactively asking you for an alternative.

long_assignment.pdf: long_assignment.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make long_assignment.tex

clean:
	latexmk -CA
