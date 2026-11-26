/*=========================================
  1. CREATE TABLE
=========================================*/
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    Department VARCHAR(30),
    Salary DECIMAL(10,2),
    City VARCHAR(30),
    ManagerName VARCHAR(50) NULL
);

/*=========================================
  2. INSERT DATA
=========================================*/
INSERT INTO Employees
VALUES
(101, 'Rahul',  'IT',      50000, 'Hyderabad', NULL),
(102, 'Priya',  'HR',      45000, 'Vijayawada', 'Ramesh'),
(103, 'Kiran',  'Finance', 60000, 'Visakhapatnam', 'Suresh'),
(104, 'Anjali', 'IT',      55000, 'Hyderabad', NULL),
(105, 'Ravi',   'HR',      40000, 'Guntur', 'Ramesh');

/*=========================================
  3. WHERE
=========================================*/
SELECT *
FROM Employees
WHERE Department = 'IT';

/*=========================================
  4. COMPARISON OPERATORS
=========================================*/

-- Equal To (=)
SELECT *
FROM Employees
WHERE Salary = 50000;

-- Greater Than (>)
SELECT *
FROM Employees
WHERE Salary > 50000;

-- Less Than (<)
SELECT *
FROM Employees
WHERE Salary < 50000;

-- Greater Than or Equal To (>=)
SELECT *
FROM Employees
WHERE Salary >= 55000;

-- Less Than or Equal To (<=)
SELECT *
FROM Employees
WHERE Salary <= 45000;

-- Not Equal To (<>)
SELECT *
FROM Employees
WHERE Department <> 'IT';

/*=========================================
  5. AND
=========================================*/
SELECT *
FROM Employees
WHERE Department = 'IT'
AND Salary > 50000;

/*=========================================
  6. OR
=========================================*/
SELECT *
FROM Employees
WHERE Department = 'HR'
OR Department = 'Finance';

/*=========================================
  7. NOT
=========================================*/
SELECT *
FROM Employees
WHERE NOT Department = 'HR';

/*=========================================
  8. BETWEEN
=========================================*/
SELECT *
FROM Employees
WHERE Salary BETWEEN 45000 AND 55000;

/*=========================================
  9. IN
=========================================*/
SELECT *
FROM Employees
WHERE City IN ('Hyderabad', 'Guntur');

/*=========================================
  10. LIKE AND WILDCARDS
=========================================*/

-- Starts with 'R'
SELECT *
FROM Employees
WHERE EmployeeName LIKE 'R%';

-- Ends with 'a'
SELECT *
FROM Employees
WHERE EmployeeName LIKE '%a';

-- Contains 'an'
SELECT *
FROM Employees
WHERE EmployeeName LIKE '%an%';

-- Second character is 'r'
SELECT *
FROM Employees
WHERE EmployeeName LIKE '_r%';

/*=========================================
  11. NULL VALUES
=========================================*/

-- IS NULL
SELECT *
FROM Employees
WHERE ManagerName IS NULL;

-- IS NOT NULL
SELECT *
FROM Employees
WHERE ManagerName IS NOT NULL;

/*=========================================
  12. CASE EXPRESSION
=========================================*/
SELECT
    EmployeeID,
    EmployeeName,
    Salary,
    CASE
        WHEN Salary >= 60000 THEN 'High Salary'
        WHEN Salary >= 50000 THEN 'Medium Salary'
        ELSE 'Low Salary'
    END AS SalaryCategory
FROM Employees;

/*=========================================
  13. COMBINED EXAMPLE
=========================================*/
SELECT
    EmployeeID,
    EmployeeName,
    Department,
    Salary,
    CASE
        WHEN Salary >= 55000 THEN 'Excellent'
        WHEN Salary >= 45000 THEN 'Good'
        ELSE 'Average'
    END AS Performance
FROM Employees
WHERE Department IN ('IT', 'HR')
AND Salary BETWEEN 45000 AND 60000;