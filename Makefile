# mdtexfile := $$HOME/Downloads/tmpr/hvmd/02n.a1.hvtex.md
# mddocfile := $$HOME/Downloads/tmpr/hvmd/02n.a1.hvdoc.md
# mdpptfile := $$HOME/Downloads/tmpr/hvmd/02n.a1.hvppt.md


.PHONY: help all article article-docx article-pdf article-tex presentation presentation-html presentation-pdf presentation-pptx presentation-tex thesis thesis-docx thesis-epub thesis-pdf thesis-tex
.DEFAULT_GOAL := help

help:
	head -2 Makefile

all:
	make article presentation thesis

docx:
	(cd article && \
	pandoc --defaults=./../defaults.yaml --defaults=docx.yaml)

pdf:
	(cd article && \
	pandoc --defaults=./../defaults.yaml --defaults=pdf.yaml)

tex:
	(pandoc $(mdtexfile) \
	--defaults=./config-yaml/defaults.yaml --defaults=./config-yaml/tex.yaml)

article:
	make article-docx article-pdf article-tex

ppt-html:
	(cd presentation && \
	pandoc --defaults=./../defaults.yaml --defaults=html.yaml)

ppt-pdf:
	(cd presentation && \
	pandoc --defaults=./../defaults.yaml --defaults=pdf.yaml)

ppt-pptx:
	(pandoc $(pptfile) \
	--defaults=./config-yaml/defaults.yaml --defaults=./config-yaml/pptx.yaml)
	# pptx presentation.pptx creado

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

clean:
	rm *.aux *.log *.gz *.out

printpdf: $(wildcard *.pdf)
	ls -a $?
