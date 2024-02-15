set PGPASSWORD=${POSTGRES_PASSWORD}
pg_restore -x --no-owner -d demo_db -U ${POSTGRES_USER} /demo_db.sql