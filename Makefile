all: malins.pdf

malins.pdf:
	xelatex malins.tex && xelatex malins.tex
clean:
	rm -rf *.log
	rm -rf malins.pdf
	rm -rf *.out
	rm -rf *.aux
