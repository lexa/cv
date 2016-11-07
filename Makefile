all: english.pdf russian.pdf

LATEX=lualatex --synctex=1 -jobname=$(@:%.pdf=%) --interaction=batchmode $<

english.pdf: cv.tex
	CV_LANGUAGE=english $(LATEX)

russian.pdf: cv.tex
	CV_LANGUAGE=russian $(LATEX)
