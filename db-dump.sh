#!/usr/bin/env bash

set -euo pipefail

echo "Generating schema dump..."
pg_dump "$DB_URL" --schema-only | sed -E 's/double precision/float8/g; s/::character varying/''/g; s/::[a-zA-Z0-9_]+\.*[a-zA-Z0-9_]*//g' > dump.sql
echo "Generated schema dump"
