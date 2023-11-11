--use Northwind

--drop Procedure if exists p_customer_all;
--go
--create procedure p_customer_all
---- procedure returns all rows from the customer table
--as begin 
--	select * from customers;
--end;
--exec p_customer_all

--drop procedure if exists p_customer;
--go
--create procedure p_customer(@id nchar(5))
---- procedure returns the entire row for the given id
--as begin 
--	select * from Orders
--	where CustomerID=@id;
--end;
--exec p_customer alfki


-- Stored Procedures
--Task 1
drop procedure if exists p_emplyees;
go
create procedure p_emplyees
as begin
	select * from Employees
end;
exec p_emplyees


--Task 2
drop procedure if exists p_emp_ext;
go
create procedure p_emp_ext(@ext nvarchar(4))
as begin 
	select * from Employees
	where  Extension = @ext;
end
exec p_emp_ext 3355;

--Task 3
drop procedure if exists p_emp_london;
go
create procedure p_emp_london(@emp nvarchar(15))
as begin 
	select count(City) from Employees
	where City = @emp;
end;
exec p_emp_london london;


--Task 4
drop procedure if exists p_emp_insert_id_name_title;
go
create procedure p_emp_insert_id_name_title
(@id int,@fName nvarchar(10),@lName nvarchar(20),@title nvarchar(30))
as begin 
	insert into Employees (EmployeeID,FirstName,LastName,Title) 
	values (@id,@fName,@lName,@title);
	select * from Employees where EmployeeID = @id;
end;
go
set identity_insert Employees on
go
exec p_emp_insert_id_name_title 11, 'Umer', 'Baghdadi', 'Insurance Manager'
go
set identity_insert Employees off
go



-- Triggers
create trigger audit_trigger
on Employees
after insert, update, delete
as begin
	if exists(select * from inserted)
		print 'New data added or inserted.';
	else if exists(select * from deleted)
		print 'Data deleted.';
end;
exec p_emp_insert_id_name_title 12, 'Zain', 'Seth', 'CEO'
go


-- Trigger tasks
-- customer Table
-- task 1 Insert
drop trigger if exists insert_trigger
go
CREATE TRIGGER insert_trigger
ON Customers
AFTER INSERT
AS
BEGIN
PRINT 'New data added.';
END;godrop Procedure if exists p_emp_insert;gocreate procedure p_emp_insert
(@id nchar(5),@name nvarchar(30),@city nvarchar(15),@country nvarchar(15), @cpnyName nvarchar(40))
as begin 
	insert into Customers(CustomerID,ContactName,City,Country, CompanyName) 
	values (@id,@name,@city,@country,@cpnyName);
end;
exec p_emp_insert 'hehei', 'Faizan', 'Lahore', 'Pakistan', 'Engro'go -- task 2 update drop trigger if exists update_triggergoCREATE TRIGGER update_trigger
ON Customers
AFTER update
AS
BEGIN
PRINT 'New data updated.';
END;godrop Procedure if exists p_emp_update;gocreate procedure p_emp_update
(@id nchar(5),@name nvarchar(30),@city nvarchar(15),@country nvarchar(15))
as begin 
	update Customers
	set CompanyName = @name, City = @city, Country = @country
	where CustomerID = @id
end;
exec p_emp_update hehei, 'Fazal', 'Mumbai', 'India'go -- task 3drop trigger if exists delete_triggergoCREATE TRIGGER delete_trigger
ON Customers
AFTER delete
AS
BEGIN
PRINT 'New data delete.';
END;
go
drop Procedure if exists p_emp_delete;gocreate procedure p_emp_delete
(@id nchar(5))
as begin 
	delete from Customers
	where CustomerID = @id
end;
exec p_emp_delete heheigo -- Employee Table-- Task 1