all: Images/*.jpg codes/* chapters/*.tex guide-book.tex
	# xelatex -shell-escape -8bit guide-book.tex -interaction=nonstopmode 
	# xelatex -shell-escape -8bit guide-book.tex -interaction=nonstopmode 
	xelatex -shell-escape -8bit -no-pdf guide-book.tex -interaction=nonstopmode 
	xelatex -shell-escape -8bit -no-pdf guide-book.tex -interaction=nonstopmode 
	xdvipdfmx -V5 guide-book
	rm guide-book.xdv

.PHONY:clean
clean:
	rm *.aux *.log *.out *.pdf *.toc
	rm -r _minted-guide-book

