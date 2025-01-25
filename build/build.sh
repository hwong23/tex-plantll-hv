# $1: ruta de contenidos


# Set option defaults
COMMIT=$TRIGGERING_SHA_7
FECHA_COMPILACION=COMPILATION_DATE
# COMMIT=1.$(git log --max-count=1 --format='%h - %s - %cD')
VERSIONES=$(git log --max-count=4 --format='1.%h - %s - %cD%n')
APP=trii
# Pandoc's configuration is specified via files of option defaults
# located in the $PANDOC_DATA_DIR/defaults directory.
export FECHA_COMPILACION COMMIT VERSIONES APP


# sustituye las variables SHELL en los archivos MD
rm -f output/manuscript.md
for f in $1/*.md; do 
    envsubst < $f >> output/manuscript.md
    echo \\n >> output/manuscript.md; 
done


echo >&2 "Build complete"
