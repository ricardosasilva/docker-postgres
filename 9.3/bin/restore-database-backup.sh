#!/bin/bash
set -e

envdir /etc/wal-e.d/env /usr/local/bin/wal-e backup-fetch $PGDATA LATEST
