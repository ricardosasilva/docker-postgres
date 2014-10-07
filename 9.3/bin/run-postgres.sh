#!/bin/bash

set -e

chown -R postgres "$PGDATA"

exec gosu postgres postgres "$@"