all: cv.pdf

%.pdf: %.tex
	lualatex --interaction=batchmode $<
