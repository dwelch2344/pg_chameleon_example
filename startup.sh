python3 -m venv /pg_chameleon
/pg_chameleon/bin/chameleon.py create_schema
/pg_chameleon/bin/chameleon.py add_source --config default;
/pg_chameleon/bin/chameleon.py init_replica --config default;
/pg_chameleon/bin/chameleon.py start_replica --config default;
