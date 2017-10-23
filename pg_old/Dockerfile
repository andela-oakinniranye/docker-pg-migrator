FROM postgres:9.6

COPY . /var/pg_migrator
#
WORKDIR /var/pg_migrator

ENTRYPOINT ["/docker-entrypoint.sh", "./scripts/start_pg.sh", "./scripts/wait-for-postgres.sh", "./scripts/dump_records.sh"]
