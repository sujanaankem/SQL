/*=========================================
  1. CREATE TABLE
=========================================*/
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    Salary DECIMAL(10,2),
    JoinDate DATE,
    Bonus DECIMAL(10,2) NULL
);

/*=========================================
  2. INSERT DATA
=========================================*/
INSERT INTO Employees
VALUES
(101, 'Rahul', 50000.75, '2022-01-15', NULL),
(102, 'Priya', 45000.50, '2021-06-20', 5000),
(103, 'Kiran', 60000.25, '2020-03-10', NULL),
(104, 'Anjali', 55000.80, '2019-09-05', 3000);

/*=========================================
  3. STRING FUNCTIONS
=========================================*/

-- UPPER
SELECT EmployeeName,
       UPPER(EmployeeName) AS UpperCaseName
FROM Employees;

-- LOWER
SELECT EmployeeName,
       LOWER(EmployeeName) AS LowerCaseName
FROM Employees;

-- LEN
SELECT EmployeeName,
       LEN(EmployeeName) AS NameLength
FROM Employees;

-- LEFT
SELECT EmployeeName,
       LEFT(EmployeeName, 3) AS First3Chars
FROM Employees;

-- RIGHT
SELECT EmployeeName,
       RIGHT(EmployeeName, 2) AS Last2Chars
FROM Employees;

-- SUBSTRING
SELECT EmployeeName,
       SUBSTRING(EmployeeName, 2, 3) AS MiddleChars
FROM Employees;

/*=========================================
  4. NUMBER FUNCTIONS
=========================================*/

-- ABS
SELECT ABS(-500) AS AbsoluteValue;

-- ROUND
SELECT Salary,
       ROUND(Salary, 0) AS RoundedSalary
FROM Employees;

-- CEILING
SELECT Salary,
       CEILING(Salary) AS CeilingSalary
FROM Employees;

-- FLOOR
SELECT Salary,
       FLOOR(Salary) AS FloorSalary
FROM Employees;

/*=========================================
  5. DATE AND TIME FUNCTIONS
=========================================*/

-- Current Date and Time
SELECT GETDATE() AS CurrentDateTime;

-- YEAR
SELECT EmployeeName,
       YEAR(JoinDate) AS JoinYear
FROM Employees;

-- MONTH
SELECT EmployeeName,
       MONTH(JoinDate) AS JoinMonth
FROM Employees;

-- DAY
SELECT EmployeeName,
       DAY(JoinDate) AS JoinDay
FROM Employees;

-- DATEDIFF
SELECT EmployeeName,
       DATEDIFF(YEAR, JoinDate, GETDATE()) AS YearsOfService
FROM Employees;

/*=========================================
  6. NULL HANDLING
=========================================*/

-- ISNULL
SELECT EmployeeName,
       ISNULL(Bonus, 0) AS BonusAmount
FROM Employees;

-- COALESCE
SELECT EmployeeName,
       COALESCE(Bonus, 0) AS BonusAmount
FROM Employees;

/*=========================================
  7. CAST
=========================================*/

SELECT EmployeeName,
       CAST(Salary AS INT) AS SalaryAsInteger
FROM Employees;

/*=========================================
  8. CONVERT
=========================================*/

SELECT EmployeeName,
       CONVERT(VARCHAR(20), JoinDate, 103) AS FormattedDate
FROM Employees;

/*
103 Format:
dd/mm/yyyy
Example:
15/01/2022
*/

/*=========================================
  9. COMBINED EXAMPLE
=========================================*/

SELECT
    EmployeeID,
    UPPER(EmployeeName) AS Employee_Name,
    Salary,
    ROUND(Salary, 0) AS RoundedSalary,
    YEAR(JoinDate) AS JoinYear,
    ISNULL(Bonus, 0) AS BonusAmount,
    CAST(Salary AS INT) AS SalaryInteger,
    CONVERT(VARCHAR(20), JoinDate, 103) AS JoinDateFormatted
FROM Employees;