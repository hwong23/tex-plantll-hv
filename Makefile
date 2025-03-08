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
	(cp $(CONTD)/mddocx/*.png output/ 2>/dev/null || :)
	(cp -R $(CONTD)/mddocx/images output/ 2>/dev/null || :)
	(sh build/build.sh $(CONTD)/mddocx)
	(pandoc -r $(OPTIONS) \
	--resource-path=$(CONTD)/mddocx \
	--defaults=./$(CONFIG)/defaults.yaml \
	--defaults=./$(CONFIG)/docx.yaml \
	./$(CONFIG)/metadata.yaml)

doctec-pdf:
	(cp $(CONTD)/mdpdf/*.png output/ 2>/dev/null || :)
	(cp -R $(CONTD)/mdpdf/images output/ 2>/dev/null || :)
	(sh build/build.sh $(CONTD)/mdpdf)
	(pandoc -r $(OPTIONS) \
	--resource-path=$(CONTD)/mdpdf \
	--defaults=./$(CONFIG)/defaults.yaml \
	--defaults=./$(CONFIG)/pdf.yaml \
	./$(CONFIG)/metadata.yaml)

doctec-tex:
	(cp $(CONTD)/mdtex/*.png output/ 2>/dev/null || :)
	(cp -R $(CONTD)/mdtex/images output/ 2>/dev/null || :)
	(sh build/build.sh $(CONTD)/mdtex)
	(pandoc -r $(OPTIONS) \
	--resource-path=$(CONTD)/mdtex \
	--defaults=./$(CONFIG)/defaults.yaml \
	--defaults=./$(CONFIG)/tex.yaml \
	./$(CONFIG)/metadata.yaml)

doctec-html:
	(pandoc -r $(OPTIONS) $(CONTD)/html/*.md \
	--resource-path=$(CONTD)/html \
	--defaults=./$(CONFIG)/defaults.yaml \
	--defaults=./$(CONFIG)/html.yaml \
	--toc)
	
doctec-ppt:
	(sh build/build.sh $(CONTD)/mdppt)
	(pandoc -r $(OPTIONS) \
	--resource-path=$(CONTD)/mdppt \
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
	(pandoc $(mdfile) $(CONTD)/mddocx/*.md \
	--defaults=./config-yaml/defaults.yaml \
	--defaults=./config-yaml/pptx.yaml)

ppt-tex: cleanout
	(cd presentation && \
	pandoc --defaults=./../defaults.yaml --defaults=tex.yaml)


clean: cleanout cleancontd
	rm -f output/*.aux output/*.log output/*.gz output/*.out
	rm -f $(CONTD)/mdtex/*.aux $(CONTD)/mdtex/*.log $(CONTD)/mdtex/*.gz $(CONTD)/mdtex/*.out
	rm -f templates/*.aux templates/*.log templates/*.gz templates/*.out
	rm -f *.aux *.log *.gz *.out

cleanout: 
	rm -f output/*.docx output/tex*.pdf output/pdf*.pdf output/*.tex output/*.pptx output/*.html
	rm -f output/*.png output/*.jpg output/images/*.*
	rm -f output/*.log 
	
cleancontd: 
	rm -f $(CONTD)/mddocx/*.md $(CONTD)/mddocx/*.png $(CONTD)/mddocx/images/*.*
	rm -f $(CONTD)/html/*.md $(CONTD)/html/*.png $(CONTD)/html/images/*.*
	rm -f $(CONTD)/mdpdf/*.md $(CONTD)/mdpdf/*.png $(CONTD)/mdpdf/images/*.*
	rm -f $(CONTD)/mdppt/*.md $(CONTD)/mdppt/*.png $(CONTD)/mdppt/images/*.*
	rm -f $(CONTD)/mdtex/*.md $(CONTD)/mdtex/*.png $(CONTD)/mdtex/images/*.*
	
printpdf: $(wildcard *.pdf)
	ls -a $?

help:
	head -2 Makefile

all: clean
	make doctec
