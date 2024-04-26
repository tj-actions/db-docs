#!/usr/bin/env bash

set -euo pipefail

echo "Generating svg file..."
dbml-renderer -i $INPUT_DBML_FILE -o $INPUT_SVG_FILE
echo "Generated svg file: $INPUT_SVG_FILE"
