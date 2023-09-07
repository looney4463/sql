import mysql.connector
mydb = mysql.connector.connect(
 host="localhost",
 user="yourusername",
 password="yourpassword"
)
mycursor = mydb.cursor()
mycursor.execute("CREATE DATABASE mydatabase")
#Write the Python code for creating a table based on the following SQL 
statement
mycursor.execute("CREATE TABLE phone(phone_id INT, country_code INT 
NOT NULL, phone_number INT NOT NULL, phone_type VARCHAR(12), PRIMARY 
KEY(phone_id));")
#Write the Python code to select rows from the table based on the 
following SQL statement:
mycursor.execute("SELECT phone_number, FROM phone,WHERE country_code = 
'US' ")
#Write the Python code to update rows in the table based on the 
following SQL statement
mycursor.execute("UPDATE phone, SET phone_type= 'MOBILE', WHERE 
phone_type = 'CELLULAR' ")
#Write the Python code to delete rows in the table based on the 
following SQL statement:
mycursor.execute("DELETE FROM phone, WHERE country_code= 'XX'")
#Write the Python code to drop the table based on the following SQL 
statement
mycursor.execute("DROP TABLE phone")
