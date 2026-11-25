/*=========================================
  1. CREATE TABLE
=========================================*/
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);

/*=========================================
  2. INSERT SINGLE ROW
=========================================*/
INSERT INTO Employees
(EmployeeID, EmployeeName, Department, Salary)
VALUES
(101, 'Rahul', 'IT', 50000);

/*=========================================
  3. INSERT MULTIPLE ROWS
=========================================*/
INSERT INTO Employees
(EmployeeID, EmployeeName, Department, Salary)
VALUES
(102, 'Priya', 'HR', 45000),
(103, 'Kiran', 'Finance', 55000),
(104, 'Anjali', 'IT', 60000);

/*=========================================
  4. VIEW DATA
=========================================*/
SELECT *
FROM Employees;

/*=========================================
  5. UPDATE
  Change Priya's salary
=========================================*/
UPDATE Employees
SET Salary = 48000
WHERE EmployeeID = 102;

/*=========================================
  6. VIEW UPDATED DATA
=========================================*/
SELECT *
FROM Employees;

/*=========================================
  7. DELETE
  Remove Kiran's record
=========================================*/
DELETE FROM Employees
WHERE EmployeeID = 103;

/*=========================================
  8. VIEW FINAL DATA
=========================================*/
SELECT *
FROM Employees;