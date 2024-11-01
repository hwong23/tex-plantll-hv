. parse_yaml.sh
eval $(parse_yaml $1 config_)

# Set option defaults
# COMMIT=${TRIGGERING_SHA_7}
FECHA_COMPILACION=COMPILATION_DATE
COMMIT=$(git log --max-count=1 --format='%h - %s - %cD')
export FECHA_COMPILACION COMMIT

# (sh build/build.sh $(CONTD)/docx)

echo Configuracion: 
set | grep config_

