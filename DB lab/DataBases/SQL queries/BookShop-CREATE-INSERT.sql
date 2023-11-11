--CREATE DATABASE BOOK_MANAGEMENT
-- Drop the tables in case they exist
DROP TABLE BookShop;
DROP TABLE BookShop_AuthorDetails;

-- Create the table

CREATE TABLE BookShop (
	BOOK_ID VARCHAR(4) NOT NULL, 
	TITLE VARCHAR(100) NOT NULL, 
	AUTHOR_NAME VARCHAR(30) NOT NULL, 
	AUTHOR_BIO VARCHAR(250),
	AUTHOR_ID INTEGER NOT NULL, 
	PUBLICATION_DATE DATE NOT NULL, 
	PRICE_USD DECIMAL(6,2) CHECK(Price_USD>0) NOT NULL
	);

-- Insert sample data into the table

INSERT INTO BookShop VALUES
('B101', 'Introduction to Algorithms', 'Thomas H. Cormen', 'Thomas H. Cormen is the co-author of Introduction to Algorithms, along with Charles Leiserson, Ron Rivest, and Cliff Stein. He is a Full Professor of computer science at Dartmouth College and currently Chair of the Dartmouth College Writing Program.', 123 , '2001-09-01', 125),
('B201', 'Structure and Interpretation of Computer Programs', 'Harold Abelson', 'Harold Abelson, Ph.D., is Class of 1922 Professor of Computer Science and Engineering in the Department of Electrical Engineering and Computer Science at MIT and a fellow of the IEEE.', 456, '1996-07-25', 65.5),
('B301', 'Deep Learning', 'Ian Goodfellow', 'Ian J. Goodfellow is a researcher working in machine learning, currently employed at Apple Inc. as its director of machine learning in the Special Projects Group. He was previously employed as a research scientist at Google Brain.', 369, '2016-11-01', 82.7),
('B401', 'Algorithms Unlocked', 'Thomas H. Cormen', 'Thomas H. Cormen is the co-author of Introduction to Algorithms, along with Charles Leiserson, Ron Rivest, and Cliff Stein. He is a Full Professor of computer science at Dartmouth College and currently Chair of the Dartmouth College Writing Program.', 123, '2013-05-15', 36.5),
('B501', 'Machine Learning: A Probabilistic Perspective', 'Kevin P. Murphy', '', 157, '2012-08-24', 46);

-- Retrieve all records from the table

SELECT * FROM BookShop;


create table Bookshop_AuthorDetails( 
	AUTHOR_NAME VARCHAR(30) NOT NULL, 
	AUTHOR_BIO VARCHAR(250),
	AUTHOR_ID INTEGER PRIMARY KEY,
	
	);
	DROP TABLE Bookshop_AuthorDetails
	INSERT INTO BookShop_AuthorDetails (AUTHOR_NAME, AUTHOR_BIO, AUTHOR_ID) (SELECT DISTINCT
AUTHOR_NAME, AUTHOR_BIO, AUTHOR_ID FROM BookShop)

select * from Bookshop_AuthorDetails

ALTER TABLE BookShop 
DROP COLUMN AUTHOR_NAME
ALTER TABLE BookShop 
DROP COLUMN AUTHOR_BIO;

go
--Task 1
CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_name VARCHAR(50),
  customer_email VARCHAR(50),
  customer_address VARCHAR(100),
  product_name VARCHAR(50),
  product_description VARCHAR(200),
  product_price DECIMAL(10,2),
  quantity INT
);

INSERT INTO orders (order_id, customer_name, customer_email,
customer_address, product_name, product_description, product_price, quantity)
VALUES
(1, 'John Smith', 'john@example.com', '123 Main St', 'Widget',
'A widget for doing stuff', 10.99, 2),
(2, 'Jane Doe', 'jane@example.com', '456 Oak Ave', 'Gadget',
'A gadget for doing things', 19.99, 1),
(3, 'John Smith', 'john@example.com', '123 Main St', 'Gadget',
'A gadget for doing things', 19.99, 1);
select * from product
create table product(
	  product_name VARCHAR(50) PRIMARY KEY,
  product_description VARCHAR(200),
  product_price DECIMAL(10,2)
)
create table Customer (
	customer_name VARCHAR(50),
  customer_email VARCHAR(50) PRIMARY KEY,
  customer_address VARCHAR(100)
);
INSERT INTO Customer (customer_name, customer_email, customer_address) (SELECT
customer_name, customer_email, customer_address FROM orders)

INSERT INTO product(product_name, product_description, product_price) (SELECT
product_name, product_description, product_price FROM orders)

ALTER TABLE orders 
DROP COLUMN customer_name
ALTER TABLE orders 
DROP COLUMN customer_address;

ALTER TABLE orders 
DROP COLUMN product_description
ALTER TABLE orders 
DROP COLUMN product_price;

drop table orders

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_email VARCHAR(50),
  product_name VARCHAR(50),
  quantity INT,
  FOREIGN KEY (customer_email) REFERENCES Customer (customer_email),
  FOREIGN KEY (product_name) REFERENCES product (product_name)
);
INSERT INTO orders (order_id, customer_email, product_name, quantity)
VALUES
(1, 'john@example.com', 'Widget', 2),
(2, 'jane@example.com', 'Gadget', 1),
(3, 'john@example.com', 'Gadget', 1);
INSERT INTO product (product_name, product_description, product_price)
VALUES
('Phone','A mobile Phone', 12.99);
INSERT INTO Customer( customer_name, customer_email,
customer_address)
VALUES
('Usama Jutt', 'Usama@example.com', '456 Main St');
INSERT INTO orders (order_id, customer_email, product_name, quantity)
VALUES
(5, 'Usama@example.com', 'Phone', 3);
select * from orders
select * from Customer
select * from product
go
--Task 2	
CREATE TABLE employees (
  employee_id INT PRIMARY KEY,
  employee_name VARCHAR(50),
  employee_address VARCHAR(100),
  department_name VARCHAR(50),
  department_location VARCHAR(50),
  manager_name VARCHAR(50)
);

INSERT INTO employees (employee_id, employee_name, employee_address, department_name, department_location, manager_name)
VALUES
(1, 'John Smith', '123 Main St', 'Sales', 'New York', 'Jane Doe'),
(2, 'Jane Doe', '456 Oak Ave', 'Sales', 'New York', 'Jane Doe'),
(3, 'Bob Johnson', '789 Elm St', 'Marketing', 'Chicago', 'Sam Smith'),
(4, 'Sam Smith', '101 Maple St', 'Marketing', 'Chicago', 'Sam Smith');
select * from employees

CREATE TABLE departments (
  department_name VARCHAR(50),
  department_location VARCHAR(50),
  manager_name VARCHAR(50)
);

INSERT INTO departments ( department_name, department_location, manager_name)
VALUES
('Sales', 'New York', 'Jane Doe'),
('Marketing', 'Chicago', 'Sam Smith');

ALTER TABLE employees 
DROP COLUMN department_location
ALTER TABLE employees 
DROP COLUMN manager_name;

select * from employees
select * from departments
go
--Task 3
