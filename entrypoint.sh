#!/bin/sh

set 
set -eu 
set -o pipefail 

set -x

echo "Using $INPUT_SITE_SOURCES_PATH"

cd $RUNNER_WORKSPACE/$INPUT_SITE_SOURCES_PATH

set +x 

antora --stacktrace $INPUT_ANTORA_PLAYBOOK
