all:	once

once: 	
	pdflatex -halt-on-error *.tex > /dev/null
	
alert: 	
	pdflatex -halt-on-error *.tex
	
clean: 
	rm *.log *.synctex* *.aux *.toc *.out 
