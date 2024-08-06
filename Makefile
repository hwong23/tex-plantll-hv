# mdfile := $$HOME/Downloads/tmpr/hvmd/02n.a1.hvtex.md
# plantilla := github.template
# estilo := github.css

CONFIG = config

.PHONY: help all article article-docx article-pdf article-tex presentation presentation-html presentation-pdf presentation-pptx presentation-tex thesis thesis-docx thesis-epub thesis-pdf thesis-tex
.DEFAULT_GOAL := help


## Pandoc options to use
OPTIONS = markdown+simple_tables+table_captions+yaml_metadata_block+smart


propuesta:
	make propuesta-docx propuesta-pdf propuesta-tex

presentacion:
	make presentation-html presentation-pdf presentation-pptx presentation-tex



propuesta-docx:
	(pandoc $(OPTIONS) ./contd/docx/*.md \
	--defaults=./$(CONFIG)/defaults.yaml \
	--defaults=./$(CONFIG)/docx.yaml)


propuesta-pdf:
	(pandoc -r $(OPTIONS) contd/pdf/*.md \
	--defaults=./$(CONFIG)/defaults.yaml \
	--defaults=./$(CONFIG)/pdf.yaml)


propuesta-tex:
	(pandoc -r $(OPTIONS) contd/tex/*.md \
	--defaults=./$(CONFIG)/defaults.yaml \
	--defaults=./$(CONFIG)/tex.yaml)


propuesta-html:
	(pandoc -r $(OPTIONS) contd/html/*.md \
	--defaults=./$(CONFIG)/defaults.yaml \
	--defaults=./$(CONFIG)/html.yaml)
	

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


clean: cleanout cleancontd
	rm -f output/*.aux output/*.log output/*.gz output/*.out
	rm -f contd/tex/*.aux contd/tex/*.log contd/tex/*.gz contd/tex/*.out
	rm -f *.aux *.log *.gz *.out

cleanout: 
	rm -f output/*.docx output/*.pdf output/*.tex \
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
	make propuesta
