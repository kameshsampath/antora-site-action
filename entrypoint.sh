#!/bin/sh

set -eu
set -o pipefail

echo "Using args:
 src: $INPUT_SITE_SOURCES_PATH
 playbook: $INPUT_ANTORA_PLAYBOOK
 docsearch enabled: $INPUT_ANTORA_LUNR_DOCSEARCH_ENABLED
 "

args=""
args="${args} --stacktrace"

if [ "$INPUT_ANTORA_LUNR_DOCSEARCH_ENABLED" = true ] ; then
	npm install @antora/lunr-extension
	args="${args} --extension @antora/lunr-extension"
fi

cd $GITHUB_WORKSPACE/$INPUT_SITE_SOURCES_PATH

ls -ltr $GITHUB_WORKSPACE/$INPUT_SITE_SOURCES_PATH

NODE_PATH="$(npm -g root)" \
echo antora "${args}" generate $INPUT_ANTORA_PLAYBOOK
