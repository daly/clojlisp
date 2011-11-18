PROJECT=clojlisp
TANGLE=tangle
LATEX=/usr/bin/latex
MAKEINDEX=/usr/bin/makeindex
UUDECODE=uudecode
PDF=dvipdf

all: 
	${TANGLE} ${PROJECT}.pamphlet ${PROJECT} >${PROJECT}.lisp
	${TANGLE} ${PROJECT}.pamphlet clojureIcon.eps.uu >clojureIcon.eps.uu
	${UUDECODE} clojureIcon.eps.uu
	${LATEX} ${PROJECT}.pamphlet
	${MAKEINDEX} ${PROJECT}.idx
	${LATEX} ${PROJECT}.pamphlet
	${PDF} ${PROJECT}.dvi
	rm -f ${PROJECT}.aux ${PROJECT}.idx ${PROJECT}.ilg ${PROJECT}.ind
	rm -f ${PROJECT}.log ${PROJECT}.out ${PROJECT}.toc ${PROJECT}.aps
	rm -f ${PROJECT}.dvi *.eps.uu *~ clojureIcon.eps

