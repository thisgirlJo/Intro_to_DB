import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Secure@mySql@9925",
    database="alx_book_store"
    )
mycursor = mydb.cursor()

add = "INSERT INTO Customers(customer_id, customer_name, email, address) VALUES(%d, %s, %s, %s)"

val = [
    ('1', "Cole Baidoo", "cbaidoo@sandtech.com", "123 Happiness Ave")
    ('2', "Blessing Malik", "bmalik@sandtech.com", "124 Happiness Ave")
    ('3', "Obed Ehoneah", "eobed@sandtech.com", "125 Happiness Ave")
    ('4', "Nehemial Kamolu", "nkamolu@sandtech.com", "126 Happiness Ave")
]
mycursor.execute(add, val)
mydb.commit()