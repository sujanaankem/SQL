DROP TABLE IF EXISTS Employees;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    Email VARCHAR(100)
);

INSERT INTO Employees VALUES 
(101, 'John', 'john@gmail.com'),
(102, 'Sara', 'sara@gmail.com'),
(103, 'David', 'david@gmail.com'),
(104, 'Mike', 'mike@gmail.com');

CREATE INDEX IX_Email ON Employees(Email);

SELECT * 
FROM Employees 
WHERE Email = 'david@gmail.com';