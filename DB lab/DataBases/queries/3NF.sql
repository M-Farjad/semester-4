-- Task 2
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
create database Departmental_Store
use Departmental_Store
CREATE TABLE employees (
employee_id INT PRIMARY KEY,
employee_name VARCHAR(50),
employee_address VARCHAR(100),
department_id INT,
manager_id INT,
FOREIGN KEY (department_id) REFERENCES departments(department_id),
FOREIGN KEY (manager_id) REFERENCES managers(manager_id)
);

CREATE TABLE departments (
department_id INT PRIMARY KEY,
department_name VARCHAR(50),
department_location VARCHAR(50)
);

CREATE TABLE managers (
manager_id INT PRIMARY KEY,
manager_name VARCHAR(50)
);

INSERT INTO employees (employee_id, employee_name, employee_address, department_id, manager_id)
VALUES
(1, 'usama jutt', 'LAhore', 1, 2),
(2, 'Salman Khokhar', 'Samnabad', 1, 2),
(3, 'Zain Ali', 'Kamoki', 2, 4),
(4, 'Numan', 'Lahore', 2, 4),
(5, 'Hammad', 'Muridke', 2, 4);

INSERT INTO departments (department_id, department_name, department_location)
VALUES
(1, 'Sales', 'New York'),
(2, 'Marketing', 'Chicago');

INSERT INTO managers (manager_id, manager_name)
VALUES
(2, 'Jane Doe'),
(4, 'Sam Smith');

select * from employees;
select * from managers;
select * from departments;
go;