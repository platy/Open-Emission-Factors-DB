#!/bin/bash
set -e

PACKAGE_JSON_URL="https://test.pypi.org/pypi/${1}/json"

curl -L -s "$PACKAGE_JSON_URL" | jq  -r '.releases | keys | .[]' | sort -V | tail --lines 1
