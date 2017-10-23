# PG Migrator For Docker
Recently, we started migrating our applications to docker containers for portability.
Within our docker-compose.yml we weren't tagging our postgres image and with a PG data in hand,
I needed a way for the docker postgres(which was at version 10), to work with the local PG data.
Note: In order for you to be able to update PG, you need both the binaries and pgdata for both versions.
Which I didn't really care about.
Well, this hack helped to migrate the data between two versions 9.6 and 10.

## Usage
To make this work for you, if postgres haven't made a simpler path for updating, simply:
1. Clone the repo
2. Update the postgres versions in the Dockerfiles to work for you
3. Copy your pgdata into this directory and rename `old-data` - these are configurations that you can tweak
4. Startup the docker containers:
```bash
docker up new_postgres
```
Wait for both containers to start up and the old container to have exited(the magic is in pg_old/scripts)
5. sh into your new_postgres container(the container name depends):
```bash
docker exec -it <container-name> /bin/bash # e.g docker exec -it migratepostgres_new_postgres_1 /bin/bash
```
6. Run the restore script:
```base
  $ ./scripts/restore_records.sh
```
7. Whatever is in new-data is your new PGDATA, use it wherever you need it.

PS: This is a non-destructive script so, it's important to cleanup after yourself, if you don't need any of the resources anymore
