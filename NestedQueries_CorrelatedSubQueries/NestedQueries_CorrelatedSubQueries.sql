-- Drop existing tables to prevent conflicts
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Departments;

-- 1. Create Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) UNIQUE NOT NULL
);

INSERT INTO Departments
VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');

-- 2. Create Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

INSERT INTO Employees
VALUES
(101, 'John', 50000.00, 1),
(102, 'Sara', 75000.00, 2),
(103, 'David', 60000.00, 3),
(104, 'Emma', 80000.00, 2),
(105, 'Michael', 45000.00, 1);


-- EXAMPLE 1: Nested Query (Standard Subquery)
-- Finds employees whose salary is greater than the overall average salary
SELECT EmployeeID, EmployeeName, Salary
FROM Employees
WHERE Salary > (
    SELECT AVG(Salary) 
    FROM Employees
);


-- EXAMPLE 2: Correlated Subquery
-- Finds employees who earn more than the average salary of their own specific department
SELECT e1.EmployeeID, e1.EmployeeName, e1.Salary, e1.DepartmentID
FROM Employees e1
WHERE e1.Salary > (
    SELECT AVG(e2.Salary)
    FROM Employees e2
    WHERE e2.DepartmentID = e1.DepartmentID
);