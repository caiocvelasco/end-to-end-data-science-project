# We will use the SQLAlchemy package to access an postgres database

# We start by importing the create_engine function.
    # This engine fires up a SQL engine that will communicates out SQL queries to the database 
from sqlalchemy import create_engine, text, inspect
from faker import Faker
import pandas as pd

# Create the engine
engine = create_engine('postgresql://myuser:mypassword@postgres/mydatabase')

# Checking the table names within the database
insp = inspect(engine)
print(insp.get_table_names(schema="schema_test")) # recall that postgres prefer lower case for names 

# Connecting to the engine and executing a SELECT query
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
    result = conn.execute(select_query) #Created a SQLAlchemy object that is assigned to the result variable
    df = pd.DataFrame(result.fetchall()) #Fetches all rows
    
    # Print the table after inserting the data
df.head()
