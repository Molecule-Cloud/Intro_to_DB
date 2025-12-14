import mysql.connector
from mysql.connector import Error


cleatry:
    myDataBase = mysql.connector.connect(
        host = "localhost",
        user = "root",
        password = "streakinggrit",
    )

    if myDataBase.is_connected():
        print("Successfully connected to MySQL database")

        myCursor = myDataBase.cursor()
        myCursor.execute(
        "CREATE DATABASE IF NOT EXISTS alx_book_store"
    )
        
        myDataBase.commit()

    print("DataBase 'alx_book_store' created successfully")
except Error as e:
    print(f"Error while connecting to MySQL: {e}")


finally:

    if 'myDataBase' in locals() and myDataBase.is_connected():
        myDataBase.close()

        print("MySQL connection is closed")
