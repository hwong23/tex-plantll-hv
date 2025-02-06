# mdfile := $$HOME/Downloads/tmpr/hvmd/02n.a1.hvtex.md
# plantilla := github.template
# estilo := github.css
# param CONTD := ruta de contenidos


CONFIG := config
.PHONY: help all article article-docx article-pdf article-tex presentation presentation-html presentation-pdf presentation-pptx presentation-tex thesis thesis-docx thesis-epub thesis-pdf thesis-tex
.DEFAULT_GOAL := help

# Pandoc options to use
OPTIONS = markdown+simple_tables+table_captions+yaml_metadata_block+smart


doctec: cleanout
	# doctec-docx doctec-tex doctec-pdf doctec-html
	make doctec-docx doctec-pdf doctec-tex

presentacion:
	make ppt-html ppt-pdf ppt-pptx ppt-tex

doctec-docx:
	(cp $(CONTD)/docx/*.png output/ 2>/dev/null || :)
	(cp -R $(CONTD)/docx/images output/ 2>/dev/null || :)
	(sh build/build.sh $(CONTD)/docx)
	(pandoc -r $(OPTIONS) \
	--resource-path=$(CONTD)/docx \
	--defaults=./$(CONFIG)/defaults.yaml \
	--defaults=./$(CONFIG)/docx.yaml \
	./$(CONFIG)/metadata.yaml)

doctec-pdf:
	(cp $(CONTD)/pdf/*.png output/ 2>/dev/null || :)
	(cp -R $(CONTD)/pdf/images output/ 2>/dev/null || :)
	(sh build/build.sh $(CONTD)/pdf)
	(pandoc -r $(OPTIONS) \
	--resource-path=$(CONTD)/pdf \
	--defaults=./$(CONFIG)/defaults.yaml \
	--defaults=./$(CONFIG)/pdf.yaml \
	./$(CONFIG)/metadata.yaml)

doctec-tex:
	(cp $(CONTD)/tex/*.png output/ 2>/dev/null || :)
	(cp -R $(CONTD)/tex/images output/ 2>/dev/null || :)
	(sh build/build.sh $(CONTD)/tex)
	(pandoc -r $(OPTIONS) \
	--resource-path=$(CONTD)/tex \
	--defaults=./$(CONFIG)/defaults.yaml \
	--defaults=./$(CONFIG)/tex.yaml \
	./$(CONFIG)/metadata.yaml)

doctec-html:
	(pandoc -r $(OPTIONS) $(CONTD)/html/*.md \
	--resource-path=$(CONTD)/tex \
	--defaults=./$(CONFIG)/defaults.yaml \
	--defaults=./$(CONFIG)/html.yaml \
	--toc)
	
doctec-ppt:
	(pandoc -r $(OPTIONS) $(CONTD)/ppt/*.md \
	--resource-path=$(CONTD)/ppt \
	--defaults=./$(CONFIG)/defaults.yaml \
	--defaults=./$(CONFIG)/ppthtml.yaml \
	--toc)

ppt-html:
	(cd presentation && \
	pandoc --defaults=./../defaults.yaml --defaults=ppthtml.yaml)

ppt-pdf:
	(cd presentation && \
	pandoc --defaults=./../defaults.yaml --defaults=pdf.yaml)

ppt-pptx:
	(pandoc $(mdfile) $(CONTD)/docx/*.md \
	--defaults=./config-yaml/defaults.yaml \
	--defaults=./config-yaml/pptx.yaml)

ppt-tex: cleanout
	(cd presentation && \
	pandoc --defaults=./../defaults.yaml --defaults=tex.yaml)


clean: cleanout cleancontd
	rm -f output/*.aux output/*.log output/*.gz output/*.out
	rm -f $(CONTD)/tex/*.aux $(CONTD)/tex/*.log $(CONTD)/tex/*.gz $(CONTD)/tex/*.out
	rm -f templates/*.aux templates/*.log templates/*.gz templates/*.out
	rm -f *.aux *.log *.gz *.out

cleanout: 
	rm -f output/*.docx output/tex*.pdf output/pdf*.pdf output/*.tex output/*.pptx output/*.html
	rm -f output/*.png output/*.jpg output/images/*.*
	rm -f output/*.log 
	
cleancontd: 
	rm -f $(CONTD)/docx/*.md $(CONTD)/docx/*.png $(CONTD)/docx/images/*.*
	rm -f $(CONTD)/html/*.md $(CONTD)/html/*.png $(CONTD)/html/images/*.*
	rm -f $(CONTD)/pdf/*.md $(CONTD)/pdf/*.png $(CONTD)/pdf/images/*.*
	rm -f $(CONTD)/ppt/*.md $(CONTD)/ppt/*.png $(CONTD)/ppt/images/*.*
	rm -f $(CONTD)/tex/*.md $(CONTD)/tex/*.png $(CONTD)/tex/images/*.*
	
printpdf: $(wildcard *.pdf)
	ls -a $?

help:
	head -2 Makefile

all: clean
	make doctec
