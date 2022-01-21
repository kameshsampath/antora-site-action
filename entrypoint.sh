#!/bin/sh

set -eu
set -o pipefail

echo "Using args:
 src: $INPUT_SITE_SOURCES_PATH
 playbook: $INPUT_ANTORA_PLAYBOOK
 "

cd $GITHUB_WORKSPACE/$INPUT_SITE_SOURCES_PATH

ls -ltr $GITHUB_WORKSPACE/$INPUT_SITE_SOURCES_PATH

NODE_PATH="$(npm -g root)" \
antora \
--stacktrace $INPUT_ANTORA_PLAYBOOK
