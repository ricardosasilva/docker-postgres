#!/bin/bash
set -e

chown -R postgres "$PGDATA"

if [ -n "$(ls -A "$PGDATA")" ]; then
  echo "The directory $PGDATA must be empty"
  exit 1
fi

gosu postgres initdb

sed -ri "s/^#(listen_addresses\s*=\s*)\S+/\1'*'/" "$PGDATA"/postgresql.conf

{ echo; echo 'host all all 0.0.0.0/0 trust'; } >> "$PGDATA"/pg_hba.conf
: