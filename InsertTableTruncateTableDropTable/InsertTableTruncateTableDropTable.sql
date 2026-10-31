CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    Department VARCHAR(30),
    Salary DECIMAL(10,2)
);

INSERT INTO Employees VALUES
(101, 'Ravi', 'HR', 30000),
(102, 'Sita', 'IT', 50000),
(103, 'Rahul', 'Finance', 45000);

SELECT * FROM Employees;

ALTER TABLE Employees
ADD Email VARCHAR(100);

TRUNCATE TABLE Employees;

DROP TABLE Employees;