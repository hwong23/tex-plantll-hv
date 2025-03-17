# Propuesta (git:7-propuestabmm))
(...)

## Plantillas
* plantilla docx: propuesta-reference.docx
* plantilla html: html-github.template
* plantilla tex: eisvogel.tex
* plantilla ppt:


## Referencias
Github, https://github.com/maehr/academic-pandoc-template
PDF, https://www.overleaf.com/latex/templates/example-of-the-tufte-handout-style/ysjghcrgdrnz.pdf
CTAN, https://ctan.org/pkg/tufte-latex 


## Comandos
grep -o '\$.*\$' ./archivo \
| grep -v '\$endif\$\|\$else\$\|\$endfor\$'

> git checkout -b arq
> git push origin arq
> git push --set-upstream origin arq


> sh archicli.sh /Users/hwo/gh model/stef-arqcomv-arq exportSingle-md.ajs arqdoc


### Pandoc desde contenedor
> docker pull pandoc/crossref
> docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` pandoc/latex:2.6 README.md

> docker run --rm \
--volume "$(pwd):/data" \
--user $(id -u):$(id -g) \
pandoc/core README.md -o outfile.docx


pandoc -r $(OPTIONS) -w html  --template=$(PREFIX)/templates/html.template --css=$(PREFIX)/marked/kultiad-serif.css --csl=$(PREFIX)/csl/$(CSL).csl --bibliography=$(BIB) -o $@ $<


### Tectonic desde contenedor
docker pull dxjoke/tectonic-docker --platform linux/x86_64

### Tectonic dentro de contenedor (
docker run --rm \
-v $(pwd):/data \
dxjoke/tectonic-docker tectonic texarticle.tex

### Ejecutar tectonic en terminal dentro del contenedor
> docker run -it -v $(pwd):/data dxjoke/tectonic-docker
> cd /data 
> tectonic --reruns 0 main.tex

docker run -it -v $(pwd):/data dxjoke/tectonic-docker
cd /data 
tectonic --keep-intermediates --reruns 0 main.tex

> abrir un terminal conectado al contenedor
> opcional --rm
docker run -it -v $(pwd):/data dxjoke/tectonic-docker


### Tectonic en devcontainer / codespace (GitHub)
https://github.com/openscript/vscode-dev-container-tectonic-template/blob/main/.devcontainer/devcontainer.json

devcontainer.json
// For format details, see https://aka.ms/devcontainer.json. For config options, see the README at:
// https://github.com/microsoft/vscode-dev-containers/tree/v0.205.2/containers/debian
{
    "name": "Tectonic",
    "build": {
      "dockerfile": "Dockerfile",
      // Update 'VARIANT' to pick an Debian version: bullseye, buster, stretch
      // Use bullseye or stretch on local arm64/Apple Silicon.
      "args": { "VARIANT": "latest" }
    },
  
    "customizations": {
      "vscode": {
        "extensions": [
          "James-Yu.latex-workshop",
          "valentjn.vscode-ltex",
          "be5invis.toml",
          "yzhang.markdown-all-in-one"
        ]
      }
    },
    "features": {
        "ghcr.io/rocker-org/devcontainer-features/pandoc:1": {}
    }
  }



make mddoc devdoc=drivingview && \
make --directory=~/gh/devdocs/tex-plantll-hv --makefile=~/gh/devdocs/tex-plantll-hv/Makefile doctec-docx CONTD=$CONTD && \
open ~/gh/devdocs/tex-plantll-hv/output/docdoctec.docx



### Devdocs
> CONTD=~/gh/devdocs/devocs-contd/contd

> docker run -it --rm --volume "$(pwd):/data" dxjoke/tectonic-docker 

### Crear documento técnico (devdoc)
> make clean --directory=~/gh/devdocs/tex-plantll-hv --makefile=~/gh/devdocs/tex-plantll-hv/Makefile CONTD=$CONTD
>  make documento alias=triipropuesta
> make doctec --directory=~/gh/devdocs/tex-plantll-hv --makefile=~/gh/devdocs/tex-plantll-hv/Makefile CONTD=$CONTD 
> make doctec-tex --directory=~/gh/devdocs/tex-plantll-hv --makefile=~/gh/devdocs/tex-plantll-hv/Makefile CONTD=$CONTD 
> gh workflow run -R github.com/hwong23/tex-plantll-hv pandoc.yml --ref 6-pruebastrii
    > gh workflow run pandoc.yml --ref 6-pruebastrii
> idworkflow=$(gh run -R github.com/hwong23/tex-plantll-hv list | awk '{print $6}' | head -1) && gh run -R github.com/hwong23/tex-plantll-hv watch $idworkflow
    > idworkflow=$(gh run list | awk '{print $6}' | head -1) && gh run watch $idworkflow
> mm=formato-ml \
&& make documento alias=triiinforme \
&& sh cpush.sh . $mm && gh workflow run -R github.com/hwong23/tex-plantll-hv pandoc.yml --ref 6-pruebastrii


## Variables en plantilla
grep -o '\$.*\$' ~/.local/share/pandoc/templates/sample.tex \
| grep -v '\$endif\$\|\$else\$\|\$endfor\$'



archi -application com.archimatetool.commandline.app -consoleLog -nosplash --modelrepository.loadModel /Users/hwo/gh/model/modelocontenidos --script.runScript /Users/hwo/gh/jarchi-hwo/scr/Tx-exportToMarkdown-CLI-md-drivingview.ajs -vistaDocumental bmmpropuesta -rutaMacMD /gh/devdocs/devocs-contd/contd/pdf -rutaCompleta no

archi -m ./ --pluginDir ./plugins --script ./jarchi-hwo/scr/list_concepts.ajs --alias bmmpropuesta


## Dependencias
* https://github.com/hwong23/modelocontenidos.git
* https://github.com/hwong23/tex-plantll-hv.git
* https://github.com/hwong23/propuesta-trii.git
* https://github.com/hwong23/jarchi-hwo.git
* https://github.com/hwong23/devocs-contd.git
* https://github.com/hwong23/hwo-academicTempl.git



## Observaciones
(...)
