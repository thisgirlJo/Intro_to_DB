import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Secure@mySql@9925",
    database="alx_book_store"
    )
mycursor = mydb.cursor()
while mydb == False:
    mycursor.execute("CREATE DATABASE alx_book_store")
    print("Database 'alx_book_store' created successfully!")
else:
    print("Database Exists!")
mycursor.close()
mydb.close()