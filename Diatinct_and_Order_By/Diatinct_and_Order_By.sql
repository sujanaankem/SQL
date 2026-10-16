CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);

INSERT INTO Employees (EmployeeID, Name, Department, Salary) VALUES
(1, 'Alice', 'HR', 50000),
(2, 'Bob', 'IT', 60000),
(3, 'Charlie', 'IT', 60000),
(4, 'David', 'Finance', 55000),
(5, 'Alice', 'HR', 50000);

SELECT DISTINCT Department
FROM Employees
ORDER BY Department ASC;
