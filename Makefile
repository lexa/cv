.DEFAULT_GOAL = all

GIT_TAG=$(shell git describe)

#generate document depending on git tag
PREFIX=
ifeq ($(GIT_TAG),)
PREFIX=
else
PREFIX=$(GIT_TAG)-
endif

all: $(PREFIX)english.pdf $(PREFIX)russian.pdf

LATEX=lualatex --synctex=1 -jobname=$(@:%.pdf=%) --interaction=errorstopmode --halt-on-error $<

.DELETE_ON_ERROR:

$(PREFIX)english.pdf: cv.tex
	CV_LANGUAGE=english $(LATEX)

$(PREFIX)russian.pdf: cv.tex
	CV_LANGUAGE=russian $(LATEX)
