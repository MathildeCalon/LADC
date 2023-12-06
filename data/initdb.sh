sudo -u postgres psql -f ./data/init_db.sql

export PGHOST=localhost
export PGPORT=5432
export PGUSER=ladc
export PGPASSWORD=@nto59147LADC
export PGDATABASE=ladc

psql -f ./data/create_tables.sql
psql -f ./data/seed_tables.sql