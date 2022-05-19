CREATE TABLE facilities_staging (
    id              int              primary key,
    name            varchar(100),
    city            varchar(100),
    state           varchar(100),
    zip             varchar(5),
    num_patients    int,
    num_providers   int
);