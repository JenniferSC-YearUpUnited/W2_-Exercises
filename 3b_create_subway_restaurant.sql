# 3.B Creating your database #

DROP DATABASE IF EXISTS BreeThai;

CREATE DATABASE IF NOT EXISTS BreeThai; 

USE BreeThai;

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
# NEED TO ADD THE FOREIGN KEY CONSTRAINT #

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






 

