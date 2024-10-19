import mysql.connector
from mysql.connector import Error


database = "CREATE DATABASE IF NOT EXISTS alx_book_store"
#connect to database

def connectDB():
    try:
        mydb = mysql.connector.connect(
            host = 'localhost',
            user = 'root',
            password = 'mydummypassword',
            database = database
            )
        mycursor = mydb.cursor()
        print("Database 'alx_book_store' created successfully!")
    except mysql.connector.Error as e:
        print(f"Error connecting to database: {e}")
    except Error as e:
        print(e)
    finally:
        if mycursor:
            mycursor.close()
        if mydb:
            mydb.close()

connectDB()
    
    


print(f"Database {database} created successfully!")

