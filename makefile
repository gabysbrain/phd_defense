
PANDOC:=pandoc -t revealjs \
	             --variable slideNumber="'c/t'" \
	             --variable transition="'none'" \
	             --filter pandoc-citeproc --csl inline.csl \
							 --bibliography /home/tom/Dropbox/Papers/all.bib \
							 --mathjax -s 

.PHONY: all

all: slides.html theme.css

slides.html: slides.md
	$(PANDOC) -o $@ $<

theme.css: theme.scss
	sass $<:$@

