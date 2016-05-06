#!/bin/bash
set -e -u -o pipefail # Fail on error

# gometalinter only runs on directories, so keep the --arg=value
# style args and not the file list.
args=""
for arg in "$@"; do
  if [[ $arg == --* ]]; then
    args="$args $arg"
  fi
done

gometalinter $args ./...
