--CREATE DATABASE Sales;

--USE Sales;

--CREATE TABLE Shippers(
--	Shipper_ID int NOT NULL PRIMARY KEY,
--	Company_name varchar(20),
--)

--INSERT INTO Shippers VALUES
--(01,'A_Company'),
--(02,'B_Company'),
--(03,'C_Company');


--CREATE TABLE Customers(
--	Customer_ID int NOT NULL PRIMARY KEY,
--	Company_name varchar(20),
--	Contact_name varchar(20),
--	Contact_title varchar(20),
--	Address varchar(30),
--	City varchar(20),
--	Region varchar(20),
--	Postal_code int,
--	Country varchar(20),
--	Phone int,
--	Fax varchar(20),
--)

--INSERT INTO Customers VALUES
--(1, 'Comapny1', 'Ali'   , 'ABC', 'Eden'  , 'Lahore', 'Shahpur', 1122, 'Pakistan', 234567, 'ABC'),
--(2, 'Comapny2', 'Ashaml', 'DEF', 'EME'   , 'Lahore', 'Shahpur', 2233, 'Pakistan', 987654, 'DEF'),
--(3, 'Comapny3', 'Nimra' , 'DHI', 'Bahria', 'Lahore', 'Bahria' , 6677, 'Pakistan', 545682, 'GHI');


--CREATE TABLE Orders(
--	Order_ID int NOT NULL PRIMARY KEY,
--	CUSTOMER_ID int references Customers,
--	Shipper_ID int references Shippers,
--	Ship_name varchar(20),
--	Ship_address varchar(30),
--	Ship_city varchar(20),
--	Ship_region varchar(20),
--	Ship_postalCode int,
--	Ship_country varchar(20),
--	Ship_via varchar(20),
--	Order_date datetime,
--	Required_date datetime,
--	Shipped_date datetime,
--	Frieght varchar(20),
--)
--INSERT INTO Orders VALUES
--(01, 1, 01, 'A_Ship', 'XYZ', 'LHR', 'UK', 0101, 'PAK', 'Boat', '2022-10-02 12:01:01', '2022-10-02 12:01:01', '2022-10-02 12:01:01', 'FRT'),
--(02, 2, 02, 'B_Ship', 'XYZ', 'FSD', 'RGN', 0202, 'PAK', 'Car' , '2022-10-02 12:01:01', '2022-10-02 12:01:01', '2022-10-02 12:01:01', 'FRT'),
--(03, 3, 03, 'C_Ship', 'XYZ', 'ISB', 'RGN', 3030, 'PAK', 'Car' , '2022-10-02 12:01:01', '2022-10-02 12:01:01', '2022-10-02 12:01:01', 'FRT');


--DELETE FROM Orders WHERE Ship_country = 'UK' AND Order_ID = 01;


--CREATE TABLE Supplier(
--	Supplier_ID int NOT NULL PRIMARY KEY,
--	Name varchar(20),
--	Address varchar(20),
--	City varchar(20),
--	Province varchar(20),
--);

--INSERT INTO Supplier VALUES
--(1, 'SUP_A', 'ABC', 'LHR', 'Punjab'),
--(2, 'SUP_B', 'DEF', 'LHR', 'Punjab'),
--(3, 'SUP_C', 'GHI', 'LHR', 'Punjab');


--CREATE TABLE Products(
--	Product_ID int NOT NULL PRIMARY KEY,
--	Supplier_ID int references Supplier,
--	Category_ID int,
--	Product_name varchar(20),
--	English_name varchar(20),
--	Quantity_per_unit int,
--	Unit_price int,
--	Units_in_stock int,
--	Units_on_order int,
--	RecordLevel varchar(10),
--	Discontinued datetime,

--	CONSTRAINT check_Quantity_per_unit CHECK(Quantity_per_unit BETWEEN 1 AND 10),
--);

--INSERT INTO Products VALUES
--(01, 1, 1, 'LUX', 'USA', 6, 500 , 50, 40, 'LVL', '2019-01-16 12:00:00'),
--(02, 2, 2, 'FNL', 'USA', 8, 800 , 20, 30, 'LVL', '2020-01-16 12:00:00'),
--(03, 3, 3, 'HNS', 'USA', 5, 1200, 60, 20, 'LVL', '2022-01-16 12:00:00');


--CREATE TABLE Order_details(
--	Supplier_ID int references Supplier NOT NULL,
--	Product_ID int references Products NOT NULL,
--	Unit_price int,
--	Quantity int,
--	Discount int,
--);

--INSERT INTO Order_details VALUES
--(1, 01, 800, 10, 5 ),
--(2, 02, 1500, 30, 10),
--(3, 03, 2000, 20, 15);

--ALTER TABLE Order_details ADD PRIMARY KEY (Supplier_ID, Product_ID);

--UPDATE Order_details SET Discount=20 WHERE Unit_price > 1000;