# 3.B Creating your database #

DROP DATABASE IF EXISTS BreeThai;

CREATE DATABASE IF NOT EXISTS BreeThai; 

USE BreeThai;

# Adding three Tables # 

# Add Table "Customers" #
# AUTO INCREMENT CUSTOMER_ID as primary key and make smalliant to use less storage #
# Make not null firstname,lastname, customeremail, and custome phone as they can refer back to purchase details #
# Assign current timestamp as the default value to specify the current timestamp and auto update values to show when the table was last updated # 



CREATE TABLE `customers` (
`Customer_ID` SMALLINT PRIMARY KEY AUTO_INCREMENT,
`FirstName` VARCHAR(100) NOT NULL,
`LastName` VARCHAR(100) NOT NULL,
`CustomerPhone` VARCHAR(100) NOT NULL, 
`CustomerEmail` VARCHAR(255) NOT NULL,
`Last_Update` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
 );

# Add Table Sandwich Orders #
# Primary key will be sandiwich_ID and it will be auto increment#
# Customer_ID will be the foreign key # 
# included not null for meat type, bread type, and ingredients, as this is important stock information for inventory table #
# product_ID will be smalliant to use less storage # 
# Assign current timestamp as the default value to specify the current timestamp and auto update values to show when the table was last updated # 



