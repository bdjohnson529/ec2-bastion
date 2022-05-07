CREATE TABLE transactions (
    id                  int           primary key,
    transaction_date    date,
    post_date           date,
    description         varchar(100),
    category            varchar(100),
    type                varchar(100),
    amount              float,
    memo                varchar(100)
);