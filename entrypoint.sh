#!/bin/bash 

set -o pipefail
set -eu 

cd /github/home

antora --stacktrace $1