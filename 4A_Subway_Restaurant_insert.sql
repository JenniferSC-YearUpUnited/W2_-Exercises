CREATE DATABASE Subway_Restaurant;

CREATE TABLE customers (
CustomerID SMALLINT PRIMARY KEY AUTO_INCREMENT,
FirstName VARCHAR(255),
LastName VARCHAR(255),
CustomerPhone VARCHAR(255), 
CustomerEmail VARCHAR(255), 
Last_Update TIMESTAMP
 );
 
 
 INSERT INTO customers (FirstName, LastName, CustomerPhone, CustomerEmail, Last_Update)
 VALUES ('Peter', 'Smith', '773-999-2525' , 'petersmith101@gmail.com' , '2024-10-04 13:26:22');
 
 