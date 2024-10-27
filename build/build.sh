#!/usr/bin/env bash
## build.sh: compile manuscript outputs from content

# Set option defaults
# COMMIT=${TRIGGERING_SHA_7}
FECHA_COMPILACION=COMPILATION_DATE
COMMIT=$(git log --max-count=1 --format='%h - %s - %cD')
VERSIONES=$(git log --max-count=5 --format='1.%h - %s - %cD%n' | tail -4)
# Pandoc's configuration is specified via files of option defaults
# located in the $PANDOC_DATA_DIR/defaults directory.
export FECHA_COMPILACION COMMIT VERSIONES

# sustituye las variables SHELL en los archivos MD
rm -f output/manuscript.md
for f in $1/*.md; do 
    envsubst < $f >> output/manuscript.md; done


echo >&2 "Build complete"
