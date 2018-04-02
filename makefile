
BIB := /home/tom/Sync/Papers/all.bib
PANDOC := pandoc

#DOTSRC := $(shell ls *.dot)
#DOTTGT := $(DOTSRC:%.dot=images/%.svg)

#all: $(DOTTGT)
all: theme.css slides.html

slides.html: slides.md
	$(PANDOC) -t html5 --template=template-revealjs.html \
	  --standalone \
		--section-divs \
		-o $@ \
		-s $<

theme.css: theme.scss
	sass $<:$@

images/%.svg: %.dot
	dot -Tsvg -Grankdir=LR $< -o $@
	#dot -Tsvg -Gdpi=100 -Gsize=9,15 -Grankdir=LR $< -o $@

