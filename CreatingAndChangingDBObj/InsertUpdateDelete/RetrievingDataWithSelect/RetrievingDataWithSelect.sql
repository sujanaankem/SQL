-- Create Table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    Department VARCHAR(30),
    Salary DECIMAL(10,2)
);

-- Insert Data
INSERT INTO Employees (EmployeeID, EmployeeName, Department, Salary)
VALUES
(101, 'Rahul', 'IT', 50000),
(102, 'Priya', 'HR', 45000),
(103, 'Kiran', 'IT', 60000),
(104, 'Anjali', 'Finance', 55000),
(105, 'Ravi', 'HR', 48000);

-- Select all columns
SELECT *
FROM Employees;

-- Select specific columns
SELECT EmployeeID, EmployeeName
FROM Employees;

-- Column aliases
SELECT EmployeeName AS Name,
       Department AS Dept
FROM Employees;

-- Distinct
SELECT DISTINCT Department
FROM Employees;

-- Top
SELECT TOP 3 *
FROM Employees;

-- Expression
SELECT EmployeeName,
       Salary + 5000 AS SalaryWithBonus
FROM Employees;

-- Calculated Column
SELECT EmployeeName,
       Salary,
       Salary * 12 AS AnnualSalary
FROM Employees;

-- All concepts together
SELECT DISTINCT TOP 5
       EmployeeID,
       EmployeeName AS Name,
       Department AS Dept,
       Salary,
       Salary + 5000 AS SalaryWithBonus,
       Salary * 12 AS AnnualSalary
FROM Employees;