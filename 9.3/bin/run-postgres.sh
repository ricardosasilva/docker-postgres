#!/bin/bash

set -e

exec gosu postgres postgres "$@"