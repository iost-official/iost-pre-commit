#!/bin/bash
#
# Capture and print stdout
#
set -e

output=$(goimports -w .)
[[ -z "$output" ]]