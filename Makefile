PROJECT=clojlisp
TANGLE=tangle
LATEX=/usr/bin/latex
MAKEINDEX=/usr/bin/makeindex
UUDECODE=uudecode

all: 
	${TANGLE} ${PROJECT}.pamphlet ${PROJECT} >${PROJECT}.lisp
	${TANGLE} ${PROJECT}.pamphlet clojureIcon.eps.uu >clojureIcon.eps.uu
	${UUDECODE} clojureIcon.eps.uu
	${LATEX} ${PROJECT}.pamphlet 2>/dev/null 1>/dev/null
	${MAKEINDEX} ${PROJECT}.idx
	${LATEX} ${PROJECT}.pamphlet


