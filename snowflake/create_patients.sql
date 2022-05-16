CREATE TABLE patients (
    id                 int           primary key,
    first_name         varchar(100),
    last_name          varchar(100),
    gender             varchar(20),
    ssn                varchar(12),
    email              varchar(100),
    billing_street     varchar(100),
    billing_city       varchar(100),
    billing_state      varchar(100),
    billing_zip        varchar(5)
);