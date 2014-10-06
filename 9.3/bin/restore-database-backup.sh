#!/bin/bash
set -e

gosu postgres envdir /etc/wal-e.d/env /usr/local/bin/wal-e backup-fetch $PGDATA LATEST
