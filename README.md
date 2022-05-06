## Commands
Connect to postgres
```
psql -h $PG_HOST -p $PG_PORT -d $PG_DATABASE -U $PG_USERNAME
```

Execute SQL file on postgres
```
psql -h $PG_HOST -p $PG_PORT -d $PG_DATABASE -U $PG_USERNAME -f sql/filename.sql
```