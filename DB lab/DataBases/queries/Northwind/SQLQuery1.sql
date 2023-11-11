--create database company
--create table DEPENDENT(
--RelationShip nvarchar(30),
--Birth_Date smalldatetime,
--Sex bit,
--Employee int
--)
--create table EMPLOYEE(
--SSN int,
--Bdate smalldatetime,
--Fname nvarchar(20),
--Minit nvarchar(1),
--Lname nvarchar(30),
--Adress nvarchar(100),
--Salary smallmoney,
--Sex bit,
--Department int,
--Supervisor int
--)

--create table DEPARTMENT(
--Department_id int,
--name nvarchar(50),
--Manager int,
--Manager_Start_Date smalldatetime
--)

--create table PROJECT(
--Project_id int,
--name nvarchar(50),
--location nvarchar(50),
--controlling_department int
--)

--alter table DEPENDENT
--add DependentName varchar(50);

--ALTER Table EMPLOYEE ALTER column Supervisor varchar(50)

--create table STAKEHOLDERS(
--name varchar(50),
--Id int,
--ContractType varchar(80),

--)
--ALTER Table PROJECT ALTER column location nvarchar(70)
--exec sp_rename EMPLOYEE, EMP

--TRUNCATE Table STAKEHOLDERS

--Alter TAble STAKEHOLDERS drop column name
--Alter TAble STAKEHOLDERS drop column Id
--Alter TAble STAKEHOLDERS drop column ContractType      -- Cannot execute beca table must have atleast one column

--drop table STAKEHOLDERS