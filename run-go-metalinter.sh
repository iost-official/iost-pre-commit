#!/bin/bash
set -e -u -o pipefail # Fail on error

gometalinter --deadline=30s --vendor
