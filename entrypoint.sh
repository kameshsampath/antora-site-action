#!/bin/bash 

set -o pipefail
set -eu 

echo "GITHUB_WORKSPACE: $GITHUB_WORKSPACE"

cd "$GITHUB_WORKSPACE"

antora --stacktrace $INPUT_ANTORA_PLAYBOOK