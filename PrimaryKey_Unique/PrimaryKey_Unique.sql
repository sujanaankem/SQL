-- Drop existing tables to prevent "Table already exists" errors
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Departments;

-- Create Departments table (Primary Key, Unique)
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) UNIQUE NOT NULL
);

INSERT INTO Departments
VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');

-- Create Employees table (Primary Key, Unique, Check, Foreign Key)
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Age INT CHECK (Age >= 18),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

INSERT INTO Employees
VALUES
(101, 'John', 'john@gmail.com', 25, 1),
(102, 'Sara', 'sara@gmail.com', 28, 2),
(103, 'David', 'david@gmail.com', 30, 3);

-- Select to view results
SELECT *
FROM Employees;