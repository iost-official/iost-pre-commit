#!/bin/bash
set -e -u -o pipefail # Fail on error

gometalinter --deadline=60s --vendor --cyclo-over=20 ./...
