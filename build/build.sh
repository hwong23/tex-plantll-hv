#!/usr/bin/env bash
## build.sh: compile manuscript outputs from content

set -o errexit \
    -o nounset \
    -o pipefail


# Set option defaults
FECHA_COMPILACION=COMPILATION_DATE
COMMIT=TRIGGERING_SHA_7
# Pandoc's configuration is specified via files of option defaults
# located in the $PANDOC_DATA_DIR/defaults directory.
export FECHA_COMPILACION COMMIT


# Add commit hash to the manuscript
envsubst < $1 > output/manuscript.md


echo >&2 "Build complete"
