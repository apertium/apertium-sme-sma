
all:
	xelatex paper.tex
	bibtex paper
	xelatex paper.tex

architecture-overview.pdf:
	tgif -print -eps architecture-overview.obj
	epstopdf architecture-overview.eps
