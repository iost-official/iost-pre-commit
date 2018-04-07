#!/bin/bash
set -e -u -o pipefail # Fail on error
for file in $(echo "$@" | grep -v "^vendor"); do
    go vet $file
done
