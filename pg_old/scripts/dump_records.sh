#!/bin/bash
set -e

cd /shared-data
touch db.sql
chown postgres db.sql
chmod 777 db.sql
su postgres -c "pg_dumpall > db.sql"

### Script concept gotten from https://github.com/docker-library/postgres/issues/37#issuecomment-277621597
