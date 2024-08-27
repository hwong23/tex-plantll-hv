# mdfile := $$HOME/Downloads/tmpr/hvmd/02n.a1.hvtex.md
# plantilla := github.template
# estilo := github.css

CONFIG := config
CONTD := /workspaces/devocs-contd/contd
         

.PHONY: help all article article-docx article-pdf article-tex presentation presentation-html presentation-pdf presentation-pptx presentation-tex thesis thesis-docx thesis-epub thesis-pdf thesis-tex
.DEFAULT_GOAL := help


# Pandoc options to use
OPTIONS = markdown+simple_tables+table_captions+yaml_metadata_block+smart


propuesta:
	make propuesta-docx propuesta-tex propuesta-pdf propuesta-html

presentacion:
	make presentation-html presentation-pdf presentation-pptx presentation-tex


propuesta-docx:
	(pandoc -r $(OPTIONS) $(CONTD)/docx/*.md \
	--defaults=./$(CONFIG)/defaults.yaml \
	--defaults=./$(CONFIG)/docx.yaml)


propuesta-pdf:
	(pandoc -r $(OPTIONS) $(CONTD)/pdf/*.md \
	--defaults=./$(CONFIG)/defaults.yaml \
	--defaults=./$(CONFIG)/pdf.yaml)


propuesta-tex:
	(pandoc -r $(OPTIONS) $(CONTD)/tex/*.md \
	--defaults=./$(CONFIG)/defaults.yaml \
	--defaults=./$(CONFIG)/tex.yaml)


propuesta-html:
	(pandoc -r $(OPTIONS) $(CONTD)/html/*.md \
	--defaults=./$(CONFIG)/defaults.yaml \
	--defaults=./$(CONFIG)/html.yaml \
	--toc)
	

ppt-html:
	(cd presentation && \
	pandoc --defaults=./../defaults.yaml --defaults=html.yaml)

ppt-pdf:
	(cd presentation && \
	pandoc --defaults=./../defaults.yaml --defaults=pdf.yaml)

ppt-pptx:
	(pandoc $(mdfile) $(CONTD)/docx/*.md \
	--defaults=./config-yaml/defaults.yaml \
	--defaults=./config-yaml/pptx.yaml)

ppt-tex:
	(cd presentation && \
	pandoc --defaults=./../defaults.yaml --defaults=tex.yaml)


clean: cleanout
	rm -f output/*.aux output/*.log output/*.gz output/*.out
	rm -f $(CONTD)/tex/*.aux $(CONTD)/tex/*.log $(CONTD)/tex/*.gz $(CONTD)/tex/*.out
	rm -f templates/*.aux templates/*.log templates/*.gz templates/*.out
	rm -f *.aux *.log *.gz *.out

cleanout: 
	rm -f output/*.docx output/tex*.pdf output/*.tex \
	output/*.pptx output/*.html

cleancontd: 
	rm -f $(CONTD)/docx/*.md $(CONTD)/docx/*.png
	rm -f $(CONTD)/html/*.md $(CONTD)/html/*.png
	rm -f $(CONTD)/pdf/*.md $(CONTD)/pdf/*.png
	rm -f $(CONTD)/ppt/*.md $(CONTD)/ppt/*.png
	rm -f $(CONTD)/tex/*.md $(CONTD)/tex/*.png
	
printpdf: $(wildcard *.pdf)
	ls -a $?

help:
	head -2 Makefile

all: clean
	make propuesta
