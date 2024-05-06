import os
from dotenv import load_dotenv
import mysql.connector
import fakerSQL
import inspect

def exec(SQL):
    # Connect to the MySQL server
    load_dotenv()
    conn = mysql.connector.connect(
        host=os.getenv('DB_HOST'),
        user=os.getenv('DB_USER'),
        password=os.getenv('DB_PASSWORD'),
        database=os.getenv('DB_DATABASE')
    )

    # Create a cursor object to execute SQL statements
    cursor = conn.cursor()

    # Execute multiple SQL statement
    try:
        for result in cursor.execute(SQL, multi=True):
            if result.with_rows:
                print("Rows produced by statement '{}':".format(
                    result.statement[:40]))
                print(result.fetchwarnings())
                print(result.fetchall())
            else:
                print("\n'{}': {}".format(
                    result.statement, result.rowcount))
    except mysql.connector.Error as err:
        print("Error: {}".format(err))
    except Exception as e:
        print("Error: {}".format(e))

    # Commit the changes
    conn.commit()

    # Close the connection
    cursor.close()
    conn.close()

def dropTables():
    # Read SQL Statements from a file
    with open('Drop.sql', 'r') as file:
        SQL = file.read()

    # Execute the SQL Statements
    exec(SQL)

def createTables():
    # Read SQL Statements from a file
    with open('Table.sql', 'r') as file:
        SQL = file.read()

    # Execute the SQL Statements
    exec(SQL)

def createRelations():
    # Read SQL Statements from a file
    with open('Relation.sql', 'r') as file:
        SQL = file.read()

    # Execute the SQL Statements
    exec(SQL)

def insertData():
    # Read SQL Statements from a file
    with open('Data.sql', 'r') as file:
        SQL = file.read()
    
    # Execute the SQL Statements
    exec(SQL)

def seeding():
    # exec all the function in faker.py
    all_functions = inspect.getmembers(fakerSQL, inspect.isfunction)
    for name, func in all_functions:
        if name.startswith('fake_'):
            print("Seeding", name)
            exec(func())

def execSQL(filename):
    with open(filename,'r') as file:
        SQL = file.read()

    # print(SQL)

    exec(SQL)

def main():
    # Drop all tables
    # dropTables()

    # print("\n\nTables Dropped...\n\n")

    # Create the tables
    # createTables()
    # print("\n\nTables Created...\n\n")

    # Create relation
    # createRelations()
    # print("\n\nRelation Created...\n\n")

    # Insert the data
    # insertData()

    # Seeding
    # seeding()

    # print("\n\nSeeding Done...\n\n")
    execSQL("rent.sql")

if __name__ == '__main__':
    main()