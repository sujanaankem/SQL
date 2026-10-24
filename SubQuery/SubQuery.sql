-- Create Table

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    Salary INT
);

-- Insert Data

INSERT INTO Employees VALUES
(1, 'John', 30000),
(2, 'Sara', 50000),
(3, 'David', 40000),
(4, 'Mike', 60000),
(5, 'Jenny', 70000);

-- Subquery

SELECT EmployeeID,
       EmployeeName,
       Salary
FROM Employees
WHERE Salary >
(
    SELECT AVG(Salary)
    FROM Employees
);