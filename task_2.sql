import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="Security@mysql@9925",
  database="alx_book_store"
)

mycursor = mydb.cursor()

mycursor.execute(CREATE TABLE Books(
		book_id INT PRIMARY KEY NOT NULL,
		title VARCHAR(130) NOT NULL,
		)
)
