## Postgres
Test connection to database
```
nc -zv hostname.region.rds.amazonaws.com 5432
```

Connect to dev db
```
psql -U postgres -p 5432 -h $PG_HOST
```

*[Copy data to table](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/PostgreSQL.Procedural.Importing.Copy.html)


## Snowflake
Connection parameters are saved in `~/.snowsql/config`.

Execute SQL on Snowflake server
```
snowsql -f filename.sql
```

Load data to Snowflake
```
REMOVE @my_csv_stage PATTERN='.*.csv.gz';

PUT file:///Users/benjohnson/Deployment/ec2-bastion/snowflake/patients.csv @my_csv_stage AUTO_COMPRESS=TRUE;

COPY INTO PATIENTS
  FROM @my_csv_stage/patients.csv.gz
  FILE_FORMAT = (FORMAT_NAME = mycsvformat)
  ON_ERROR = 'skip_file';
```
## Commands
Connect to postgres
```
psql -h $PG_HOST -p $PG_PORT -d $PG_DATABASE -U $PG_USERNAME
```

Execute SQL file on postgres
```
psql -h $PG_HOST -p $PG_PORT -d $PG_DATABASE -U $PG_USERNAME -f sql/filename.sql
```