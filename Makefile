# mdfile := $$HOME/Downloads/tmpr/hvmd/02n.a1.hvtex.md

.PHONY: help all article article-docx article-pdf article-tex presentation presentation-html presentation-pdf presentation-pptx presentation-tex thesis thesis-docx thesis-epub thesis-pdf thesis-tex
.DEFAULT_GOAL := help
cleanfiles := tex*.pdf


docx:
	(pandoc $(mdfile) contd/docx/*.md \
	--defaults=./config-yaml/defaults.yaml \
	--defaults=./config-yaml/docx.yaml)

pdf:
	(pandoc $(mdfile) contd/docx/*.md \
	--defaults=./config-yaml/defaults.yaml \
	--defaults=./config-yaml/pdf.yaml)

tex:
	(pandoc $(mdfile) contd/tex/*.md \
	--defaults=./config-yaml/defaults.yaml \
	--defaults=./config-yaml/tex.yaml)

article:
	make article-docx article-pdf article-tex

ppt-html:
	(cd presentation && \
	pandoc --defaults=./../defaults.yaml --defaults=html.yaml)

ppt-pdf:
	(cd presentation && \
	pandoc --defaults=./../defaults.yaml --defaults=pdf.yaml)

ppt-pptx:
	(pandoc $(mdfile) contd/docx/*.md \
	--defaults=./config-yaml/defaults.yaml \
	--defaults=./config-yaml/pptx.yaml)

ppt-tex:
	(cd presentation && \
	pandoc --defaults=./../defaults.yaml --defaults=tex.yaml)

presentation:
	make presentation-html presentation-pdf presentation-pptx presentation-tex

thesis-docx:
	(cd thesis && \
	pandoc --defaults=./../defaults.yaml --defaults=docx.yaml)

thesis-epub:
	(cd thesis && \
	pandoc --defaults=./../defaults.yaml --defaults=epub.yaml)

thesis-pdf:
	(cd thesis && \
	pandoc --defaults=./../defaults.yaml --defaults=pdf.yaml)

thesis-tex:
	(cd thesis && \
	pandoc --defaults=./../defaults.yaml --defaults=tex.yaml)

thesis:
	make thesis-docx thesis-epub thesis-pdf thesis-tex

clean: cleanout
	rm -f output/*.aux output/*.log output/*.gz output/*.out
	rm -f contd/tex/*.aux contd/tex/*.log contd/tex/*.gz contd/tex/*.out
	rm -f templates/*.aux templates/*.log templates/*.gz templates/*.out
	rm -f *.aux *.log *.gz *.out

cleanout: 
	rm -f output/*.docx output/$(cleanfiles) output/*.tex \
	output/*.pptx output/*.html

cleancontd: 
	rm -f contd/docx/*.md contd/docx/*.png
	rm -f contd/html/*.md contd/html/*.png
	rm -f contd/pdf/*.md contd/pdf/*.png
	rm -f contd/ppt/*.md contd/ppt/*.png
	rm -f contd/tex/*.md contd/tex/*.png

printpdf: $(wildcard *.pdf)
	ls -a $?

help:
	head -2 Makefile

all: clean
	make docx ppt-pptx pdf tex
