#!/bin/bash
set -e

chown -R postgres "$PGDATA"

if [ -z "$(ls -A "$PGDATA")" ]; then
  gosu postgres initdb

  sed -ri "s/^#(listen_addresses\s*=\s*)\S+/\1'*'/" "$PGDATA"/postgresql.conf

  { echo; echo 'host all all 0.0.0.0/0 trust'; } >> "$PGDATA"/pg_hba.conf

fi
