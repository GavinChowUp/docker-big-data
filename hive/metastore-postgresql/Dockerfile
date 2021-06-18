FROM postgres:13

COPY conf/hive-schema-2.3.0.postgres.sql /hive/hive-schema-2.3.0.postgres.sql
COPY conf/hive-txn-schema-2.3.0.postgres.sql /hive/hive-txn-schema-2.3.0.postgres.sql
COPY conf/upgrade-2.3.0-to-3.0.0.postgres.sql /hive/upgrade-2.3.0-to-3.0.0.postgres.sql
COPY conf/upgrade-3.0.0-to-3.1.0.postgres.sql /hive/upgrade-3.0.0-to-3.1.0.postgres.sql

COPY conf/init-hive-db.sh /docker-entrypoint-initdb.d/init-user-db.sh