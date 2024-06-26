Github, https://github.com/maehr/academic-pandoc-template
PDF, https://www.overleaf.com/latex/templates/example-of-the-tufte-handout-style/ysjghcrgdrnz.pdf
CTAN, https://ctan.org/pkg/tufte-latex 
    Location: CTAN Packages tufte-latex
    tufte-latex – Document classes inspired by the work of Edward Tufte
    Provided are two classes inspired, respectively, by handouts and books created by Edward Tufte.
    Sources	/macros/latex/contrib/tufte-latex
    Documentation	
    README
    README.txt
    Sample book
    Sample handout
    Repository	https://tufte-latex.github.io/tufte-latex/
    Version	3.5.2
    Licenses	Apache License, version 2.0
    Copyright	2007–2015 Bil Kleb, Bill Wood and Kevin Godby
    Maintainer	Kevin Godby
    TDS archive	tufte-latex.tds.zip
    Contained in	TEX Live as tufte-latex
    MiKTEX as tufte-latex
    Topics	Book publication
    Class
    Download the contents of this package in one zip archive (627.9k).
    Community Comments
    Jukka Nikulainen 2023-03-21
    Excellent class file, definitely has the look and feel of Tufte's books. Have used the handout class on numerous occasions. Thank you!
    paradoxsurprisedoze 2020-10-05
    Does not actually use the fonts that Tufte uses, instead defaulting to an obsolete version of Palatino and a free Helvetica replacement. Note that, as of February 2020, there is a version of ET Book available in CTAN, which I have successfully used by editing tufte-common.def.
    This class does not compile under modern versions of LuaTEX (after 0.85).
    The latex-mimosis class and caesar-book class are better alternatives for long documents.
    jamesjames 2018-09-23

    Announcements
    2015-06-23 CTAN update: tufte-latex
    2009-12-11 CTAN update: tufte-latex
    2009-05-17 CTAN update: Tufte-LaTeX
    more
    Suggestions
    Maybe you are interested in the following packages as well.
    bookest: Extended book class
    basque-book: Class for book-type documents written in Basque
    qyxf-book: Book Template for Qian Yuan Xue Fu
    bgteubner: Class for producing books for the publisher “Teubner Verlag”
    more

    Repository
    Guest Book Sitemap Contact Contact Author Feedback

    

2024-06-21 23:31 CEST
/macros/latex/contrib/tufte-latex/README
README
Hi,

Welcome to the beginnings of Tufte LaTeX package to help you
produce Tufte-style handouts, reports, and notes.

== Quick Start

Try typesetting sample-handout.tex with the following sequence
of commands,

 pdflatex sample-handout
 bibtex   sample-handout
 pdflatex sample-handout
 pdflatex sample-handout

The result should look like sample-handout.pdf.

The sample book can be compiled with the following:

 pdflatex sample-book
 bibtex sample-book
 texindy --language english sample-book.idx
 # or makeindex sample-book.idx
 pdflatex sample-book
 pdflatex sample-book
 pdflatex sample-book

== Troubleshooting

If you encounter errors of the form,

 ! LaTeX Error: File `paralist.sty' not found.

you will need to obtain missing packages from CTAN <http://ctan.org>.
For package installation instructions and answers to many other
questions, see the UK TeX FAQ,

 http://www.tex.ac.uk/cgi-bin/texfaq2html?introduction=yes

or search the news:comp.text.tex group via,

 http://groups.google.com/group/comp.text.tex

The following packages are required:

 * hardwrap catchfile units lipsum helvetic
 * chngpage or changepage
 * fancyhdr
 * fontenc
 * geometry
 * hyperref
 * natbib and bibentry
 * optparams
 * paralist
 * placeins
 * ragged2e
 * setspace
 * textcase
 * textcomp
 * titlesec
 * titletoc
 * xcolor
 * xifthen

The following packages are optional and will be automatically used if installed:

 * beramono
 * helvet
 * ifpdf
 * ifxetex
 * letterspace (in the microtype package)
 * mathpazo
 * soul

== Bugs/Features/Support

For kudos, feature requests, patches, or support requests that you
feel are /particular/ to this Tufte-LaTeX package, i.e., not a general
LaTeX issue, please use this project's issue tracker available at

 http://tufte-latex.googlecode.com

== Contributing

Patches are most welcome via the issue tracker!  Submit a series of
high quality patches, and you'll find yourself a developer on this project.

== License

Copyright 2007-2010 by Kevin Godby, Bil Kleb, and Bill Wood.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
