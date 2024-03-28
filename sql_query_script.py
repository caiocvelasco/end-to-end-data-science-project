from sqlalchemy import create_engine, text
from faker import Faker

# Create the engine
engine = create_engine('postgresql://myuser:mypassword@postgres/mydatabase')

# Execute a SELECT query
with engine.connect() as conn:

    faker = Faker('en_US')

    # Insert fake data
    for i in range(10):
        test_id = faker.random_int(min=1, max=200)
        amount = faker.random_int(min=100, max=10000)
        #created_at: recall that the created_at is defined in the init.sql
        #insert_query = text(f"INSERT INTO SCHEMA_TEST.TABLE_TEST (test_id, amount) VALUES ({test_id}, {amount})")
        insert_query = text("INSERT INTO SCHEMA_TEST.TABLE_TEST (test_id, amount) VALUES (:test_id, :amount)")
        conn.execute(insert_query, {"test_id": test_id, "amount": amount})

    # Commit the transaction
    conn.commit() # committing refers to finalizing and applying the changes made within a transaction to the database.

    # Fetch and print the table after inserting the data
    select_query = text("SELECT * FROM SCHEMA_TEST.TABLE_TEST")
    result = conn.execute(select_query)
    rows = result.fetchall()

    print("\nTable data after insertion:")
    for row in rows:
        print(row)
