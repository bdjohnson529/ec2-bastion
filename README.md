## Postgres
Test connection to database
```
nc -zv hostname.region.rds.amazonaws.com 5432
```

Connect to dev db
```
psql -U postgres -p 5432 -h $RDSHOST
```

*[Copy data to table](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/PostgreSQL.Procedural.Importing.Copy.html)


## Snowflake
Connection parameters are saved in `~/.snowsql/config`.

## Commands
Connect to postgres
```
psql -h $PG_HOST -p $PG_PORT -d $PG_DATABASE -U $PG_USERNAME
```

Execute SQL file on postgres
```
psql -h $PG_HOST -p $PG_PORT -d $PG_DATABASE -U $PG_USERNAME -f sql/filename.sql
```