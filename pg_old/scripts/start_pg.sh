#!/bin/bash
# start_pg.sh
set -e

su postgres -c "/usr/lib/postgresql/9.6/bin/pg_ctl -D /data start"
echo "I'm starting up Postgres"

exec "$@"
