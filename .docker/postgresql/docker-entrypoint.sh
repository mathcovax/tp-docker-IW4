#!/bin/sh
set -e

initialize_database() {
    su-exec postgres initdb -D /var/lib/postgresql/data

    mkdir -p /run/postgresql
    chown -R postgres:postgres /run/postgresql

    su-exec postgres pg_ctl -D /var/lib/postgresql/data -o "-c listen_addresses='localhost'" -w start

    su-exec postgres psql --command "CREATE USER $POSTGRES_USER WITH SUPERUSER PASSWORD '$POSTGRES_PASSWORD';"
    su-exec postgres createdb -O $POSTGRES_USER $POSTGRES_DB
}

if [ ! -s /var/lib/postgresql/data/PG_VERSION ]; then
    initialize_database
fi

cp /postgresql.conf /var/lib/postgresql/data/postgresql.conf
chown postgres:postgres /var/lib/postgresql/data/postgresql.conf

echo "host all  all all trust" >> /var/lib/postgresql/data/pg_hba.conf

exec su-exec postgres postgres -D /var/lib/postgresql/data -c config_file=/var/lib/postgresql/data/postgresql.conf