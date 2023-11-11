--use Northwind
--go

----Task 1
--CREATE VIEW Northwind_info AS
--SELECT ContactName as Name, Phone
--FROM Customers;
--select * from Northwind_info
--go

----Task 2
--create view Farjad as select CustomerID as [Customer Number], Employees.FirstName 
--as empFname,Employees.LastName as empLname from Customers INNER JOIN Employees on Customers.Country = 'uk'
--and Employees.country = 'uk';
--go
--select * from Farjad
--go
 
----Task 3
--create view [2021_se_56] as select EmployeeID as empID, FirstName as Fname, LastName as Lname from Employees
--go
--select * from reg_num
--go

----Task 4
--insert into Northwind_info (Name,Phone) values ('hammad','03030')
--go

----Task 5
--ALTER VIEW Farjad AS SELECT Customers.PostalCode as PstCode, Employees.Extension,Customers.Country
--FROM Customers,Employees
--go
--select* from Farjad
--go

----Task 6
--create view [56] as select EmployeeID, FirstName , LastName , Territories.TerritoryDescription from Employees,Territories
--go

----Task 7
--ALTER VIEW [56] AS SELECT FirstName , LastName , Employees.city from Employees
--go
--select * from [56]
--go


----Task 8
--drop view Northwind_info;
--drop view Farjad;
--drop view reg_num;
--go