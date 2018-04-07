#!/bin/bash
#
# Capture and print stdout/stderr, since golint doesn't use proper exit codes
#
set -e

exec 5>&1
for file in $(echo "$@" | grep -v "^vendor"); do
    output="$(golint "$file" 2>&1 | tee /dev/fd/5)"
    [[ -z "$output" ]]
done
