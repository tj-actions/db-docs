#!/usr/bin/env bash

set -euo pipefail

ARGS=""

if [[ $INPUT_DB_TYPE == 'postgres' ]]; then
   ARGS="--postgres"
elif [[ $INPUT_DB_TYPE == 'mysql' ]]; then
   ARGS="--mysql"
elif [[ $INPUT_DB_TYPE == 'mssql' ]]; then
   ARGS="--mssql"
fi

echo "Generating dbml file for $INPUT_DB_TYPE database..."
# shellcheck disable=SC2086
sql2dbml dump.sql $ARGS > "$DBML_OUTPUT_FILE"
echo "Written dbml file: $DBML_OUTPUT_FILE"
