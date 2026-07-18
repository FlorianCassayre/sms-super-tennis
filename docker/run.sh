#!/usr/bin/env bash

set -e

docker run --rm \
  -v "$PWD:/workspace" \
  -w /workspace \
  wla-dx \
  "$@"
