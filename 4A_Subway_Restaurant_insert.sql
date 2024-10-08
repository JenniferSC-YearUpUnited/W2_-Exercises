# 3.B Creating your database #

DROP DATABASE IF EXISTS subway_restaurant;

CREATE DATABASE IF NOT EXISTS subway_restaurant; 

USE subway_restaurant;

# Adding three Tables # 

# Add Table "Customers" #
# AUTO INCREMENT CUSTOMER_ID as primary key and make smalliant to use less storage #
# Make not null firstname,lastname, customeremail, and custome phone as they can refer back to purchase details #
# Assign current timestamp as the default value to specify the current timestamp and auto update values to show when the table was last updated # 



CREATE TABLE customers (
Customer_ID SMALLINT PRIMARY KEY AUTO_INCREMENT NOT NULL,
FirstName VARCHAR(100) NOT NULL,
LastName VARCHAR(100) NOT NULL,
CustomerPhone VARCHAR(100) NOT NULL, 
CustomerEmail VARCHAR(255) NOT NULL,
Last_Update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
 );

# Add Table "Sandwich Orders"  #
# Primary key will be sandiwich_ID and it will be auto increment #
# Customer_ID will be the foreign key as it has a one to many relationship with orders  # 
# included not null for meat type, bread type, and ingredients, as this is important stock information for inventory table #
# product_ID will be smalliant to use less storage # 
# Assign current timestamp as the default value to specify the current timestamp and auto update values to show when the table was last updated # 

CREATE TABLE sandwichorders (
Sandwich_ID SMALLINT PRIMARY KEY AUTO_INCREMENT NOT NULL,
Customer_ID SMALLINT NOT NULL,
Meat_Type VARCHAR(255) NOT NULL,
Bread_Type VARCHAR(255) NOT NULL,
Ingredients VARCHAR(255) NOT NULL,
Product_ID SMALLINT,
Last_Update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
# NEED TO ADD THE FOREIGN KEY after adding records #

# Add Tble "Inventory"  #
# Primary key will be Product_ID and it will be auto increment # 
# Brand and supplier will be carchar as they will just be names #
# SKU number and quantitystock will be integers and will be not null values #
# date of expected restock will be a date and will be not null as it is critical to have an estimate of when there will be more #
# Assign current timestamp as default value to specify the current timestamp and auto update values to show when the table was last updated #

CREATE TABLE inventory (
Product_ID SMALLINT PRIMARY KEY AUTO_INCREMENT NOT NULL,
Brand VARCHAR(200),
Supplier VARCHAR(200),
SKU_Number INT NOT NULL,
Quantity_stock INT NOT NULL,
Dateofexpectedrestock Date NOT NULL,
Last_Update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);

# Add info into "customers" #

INSERT INTO customers (FirstName, LastName, CustomerPhone, CustomerEmail, Last_Update)
VALUES ('Peter', 'Smith', '773-999-2525', 'petersmith101@gmail.com', '2024-10-07 22:21:40');

INSERT INTO customers (FirstName, LastName, CustomerPhone, CustomerEmail, Last_Update)
VALUES ('Sam', 'Lee', '708-567-9989', 'samlee200@gmail.com', '2024-10-07 22:24:30');

INSERT INTO customers (FirstName, LastName, CustomerPhone,CustomerEmail, Last_Update) 
VALUES ('Joe', 'Doe', '312-456-8989', 'joedoe325@gmail.com', '2024-10-07 22:26:40');

INSERT INTO customers (FirstName, LastName, CustomerPhone, CustomerEmail, Last_Update)
Values ('Katie', 'White', '847-852-963', 'katiewhite500@gmail.com', '2024-10-07 10:31:20');

# Retrieve records added to check that results are appearing as expected #

SELECT * FROM customers;

# Add info into "Inventory" #
# Has PK that will be used in sandwichorders as FK #

INSERT INTO inventory (Product_ID, Brand, Supplier, SKU_Number, Quantity_stock, Dateofexpectedrestock, Last_Update)
VALUES (100, 'Kraft', 'WisFarm', '12345', '6', '2024-10-16', '2024-10-08 10:27:25');

# Retrieve first added record to check results #

SELECT * FROM inventory;

# Adding three more records into "Inventory" #

INSERT INTO inventory (Product_ID, Brand, Supplier, SKU_Number, Quantity_stock, Dateofexpectedrestock, Last_Update)
VALUES (NULL, 'Sprite', 'CocoaCola', '67891', '10', '2024-10-18', '2024-10-08 10:46:35'); 

INSERT INTO inventory (Product_ID, Brand, Supplier, SKU_Number, Quantity_stock, Dateofexpectedrestock, Last_Update)
VALUES (NULL, 'Subway','SouthwestBaking', '36925', '13', '2024-10-21', '2024-10-08 10:59:20');

INSERT INTO inventory (Product_ID, Brand, Supplier, SKU_Number, Quantity_stock, Dateofexpectedrestock, Last_Update)
VALUE (NULL, 'TurkeyMeatSubway', 'Perdue', '25814', '4', '2024-10-10', '2024-10-08 11:05:10'); 

# Add info into " sandwichorders' #

INSERT INTO sandwichorders (Sandwich_ID, Customer_ID, Meat_Type, Bread_Type, Ingredients, Product_ID, Last_Update) 
VALUE (NULL,'1', 'Turkeybreast', 'Honeyoat', 'Lettuce, Cucumber, Mayo', '1', '2024-10-08 14:24:50'); 

# Retrieve first record to check results #

SELECT * FROM sandwichorders;

# Add three more records into "sandwichorders" #

INSERT INTO sandwichorders (Sandwich_ID, Customer_ID, Meat_Type, Bread_Type, Ingredients, Product_ID, Last_Update) 
VALUE (NULL, '2', 'tuna', 'wheat', 'swisschesse,lettuce,oil', '2', '2024-10-08 14:50:55');

INSERT INTO sandwichorders (Sandwich_ID, Customer_ID, Meat_Type, Bread_Type, Ingredients, Product_ID, Last_Update) 
VALUE (NULL, '3', 'ham', 'italianbread', 'spinach,avocado,mayo', '3', '2024-10-08 14:56:57');

INSERT INTO sandwichorders (Sandwich_ID, Customer_ID, Meat_Type, Bread_Type, Ingredients, Product_ID, Last_Update) 
VALUE (NULL, '4', 'roastbeef', 'multigrain', 'mozzarella,mayo,onions,cucumbers', '4', '2024-10-08 14:57:25');

# Added FK to "sandwichorders" #

ALTER TABLE sandwichorders
ADD FOREIGN KEY (Customer_ID) REFERENCES customers(Customer_ID);

# Added FK2 to "sandwichorders" #

ALTER TABLE sandwichorders
ADD CONSTRAINT FK2_Product_ID
FOREIGN KEY (Product_ID) REFERENCES inventory(Product_ID);






	









 

