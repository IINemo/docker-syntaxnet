SCRIPT_DIR=$(dirname $0)
rsync -avz --links --delete --exclude ".svn" "$SCRIPT_DIR/../syntaxnet_api_server/src/syntaxnet_api_server/" "$SCRIPT_DIR/api/" || exit -1

docker build -t inemo/syntaxnet_rus:latest $SCRIPT_DIR
RES=$?

exit $RES

