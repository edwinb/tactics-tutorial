TUTORIAL = tactics
DATE     = ${shell date +%F}
TUT_PDF  = ${DATE}-${TUTORIAL}

all: tutorial clean

tutorial: print screen


print:
	latexmk -gg -pdf -bibtex-cond ${TUTORIAL}.print.tex

screen:
	latexmk -gg -pdf -bibtex-cond ${TUTORIAL}.screen.tex


version: tutorial
	mv ${TUTORIAL}.print.pdf ${TUT_PDF}.print.pdf
	mv ${TUTORIAL}.screen.pdf ${TUT_PDF}.screen.pdf

clean:
	latexmk -c

cthulhu:
	latexmk -C
	rm -rf ${TUT_PDF}
