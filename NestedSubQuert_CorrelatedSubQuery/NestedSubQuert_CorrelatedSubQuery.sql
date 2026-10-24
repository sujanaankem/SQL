-- Create Table

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);

-- Insert Data

INSERT INTO Employees VALUES
(1, 'John', 'HR', 30000),
(2, 'Sara', 'HR', 40000),
(3, 'David', 'IT', 50000),
(4, 'Mike', 'IT', 70000),
(5, 'Jenny', 'Finance', 60000),
(6, 'Alex', 'Finance', 45000);

-- Nested Subquery

SELECT EmployeeName,
       Salary
FROM Employees
WHERE Salary >
(
    SELECT AVG(Salary)
    FROM Employees
);

-- Correlated Subquery

SELECT EmployeeName,
       Department,
       Salary
FROM Employees e1
WHERE Salary >
(
    SELECT AVG(Salary)
    FROM Employees e2
    WHERE e1.Department = e2.Department
);