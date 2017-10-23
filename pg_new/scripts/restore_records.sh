#!/bin/bash

cd /shared-data
su postgres -c "psql -f db.sql"

### Script concept gotten from https://github.com/docker-library/postgres/issues/37#issuecomment-277621597
