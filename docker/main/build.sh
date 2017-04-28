NAME="$1"
LANG_LOCALE="$2"
MODEL_URL="$3"


SCRIPT_DIR=$(dirname $0)
rsync -avz --links --delete --exclude ".svn" "$SCRIPT_DIR/../../syntaxnet_api_server/src/syntaxnet_api_server/" "$SCRIPT_DIR/api/" || exit -1

cat Dockerfile.tmpl > Dockerfile
sed -i "s/<%PLACEHOLDER_LANG_LOCALE%>/$LANG_LOCALE/g" Dockerfile
sed -i "s|<%PLACEHOLDER_MODEL_URL%>|$MODEL_URL|g" Dockerfile
sed -i "s|<%PLACEHOLDER_MODEL_NAME%>|$(basename $MODEL_URL)|g" Dockerfile

docker build -t "$NAME" $SCRIPT_DIR
RES=$?

exit $RES

