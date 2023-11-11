--use Northwind

--SELECT [Order Details].OrderID,Customers.CustomerID FROM [Order Details]
--INNER JOIN Customers ON [Order Details].OrderID = Customers.;

--SELECT Orders.OrderID, Customers.ContactName, Orders.OrderDate 
--FROM Orders INNER JOIN Customers ON 
--Orders.CustomerID=Customers.CustomerID; 

--SELECT Customers.ContactName, Orders.OrderID FROM Customers LEFT JOIN Orders ON 
--Customers.CustomerID = Orders.CustomerID ORDER BY Customers.ContactName; 


--SELECT Orders.OrderID, Employees.LastName, Employees.FirstName FROM Orders
--RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID ORDER BY Orders.OrderID; 