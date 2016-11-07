all: cv.pdf

%.pdf: %.tex
	lualatex --synctex=1 --interaction=batchmode $<
