#!/bin/bash
# sleep 10
cd /shared-data
echo "I'm dumping the records"
echo "$(env)"
touch db.sql
chown postgres db.sql
chmod 777 db.sql
su postgres -c "pg_dumpall > db.sql"

# echo "Hello"
