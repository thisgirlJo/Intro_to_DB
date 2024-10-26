import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="Security@mysql@9925",
  database="alx_book_store"
)

mycursor = mydb.cursor()

mycursor.execute("USE alx_book_store; SHOW TABLES")

for x in mycursor:
  print(x)
