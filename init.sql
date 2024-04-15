CREATE SCHEMA schema_test;

CREATE TABLE schema_test.table_test (
    test_id int,
    amount int,
    created_at timestamp without time zone not null default (CURRENT_TIMESTAMP at time zone 'utc')
); 