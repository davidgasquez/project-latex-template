.PHONY: latexmk clean dev pdf all

COMMON_FLAGS = -pdf

all: pdf

pdf: project.tex
	latexmk $(COMMON_FLAGS) $<

dev: project.tex
	latexmk $(COMMON_FLAGS) -pvc -view=none $<

clean:
	latexmk $(COMMON_FLAGS) -c
