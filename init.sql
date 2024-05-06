CREATE SCHEMA SCHEMA_TEST;

CREATE TABLE SCHEMA_TEST.TABLE_TEST (
    test_id int,
    amount int,
    created_at timestamp without time zone not null default (CURRENT_TIMESTAMP at time zone 'utc')
); 