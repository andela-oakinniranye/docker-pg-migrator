#!/bin/bash

cd /shared-data
su postgres -c "psql -f db.sql"
# su postgres
