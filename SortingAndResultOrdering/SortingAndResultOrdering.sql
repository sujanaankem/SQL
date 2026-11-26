/*=========================================
  1. CREATE TABLE
=========================================*/
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(30),
    Price DECIMAL(10,2)
);

/*=========================================
  2. INSERT DATA
=========================================*/
INSERT INTO Products
VALUES
(101, 'Laptop', 'Electronics', 60000),
(102, 'Mouse', 'Electronics', 800),
(103, 'Keyboard', 'Electronics', 1500),
(104, 'Chair', 'Furniture', 5000),
(105, 'Table', 'Furniture', 7000),
(106, 'Phone', 'Electronics', 25000),
(107, 'Fan', 'Appliances', 3000),
(108, 'AC', 'Appliances', 35000);

/*=========================================
  3. ORDER BY ASCENDING
=========================================*/
SELECT *
FROM Products
ORDER BY Price ASC;

/*=========================================
  4. ORDER BY DESCENDING
=========================================*/
SELECT *
FROM Products
ORDER BY Price DESC;

/*=========================================
  5. SORTING BY MULTIPLE COLUMNS
=========================================*/
SELECT *
FROM Products
ORDER BY Category ASC,
         Price DESC;

/*
First sorts by Category alphabetically.
Within each Category, sorts by Price descending.
*/

/*=========================================
  6. OFFSET FETCH - PAGE 1
=========================================*/
SELECT *
FROM Products
ORDER BY ProductID
OFFSET 0 ROWS
FETCH NEXT 3 ROWS ONLY;

/*
Returns:
101, 102, 103
*/

/*=========================================
  7. OFFSET FETCH - PAGE 2
=========================================*/
SELECT *
FROM Products
ORDER BY ProductID
OFFSET 3 ROWS
FETCH NEXT 3 ROWS ONLY;

/*
Returns:
104, 105, 106
*/

/*=========================================
  8. OFFSET FETCH - PAGE 3
=========================================*/
SELECT *
FROM Products
ORDER BY ProductID
OFFSET 6 ROWS
FETCH NEXT 3 ROWS ONLY;

/*
Returns:
107, 108
*/

/*=========================================
  9. COMBINED EXAMPLE
=========================================*/
SELECT
    ProductID,
    ProductName,
    Category,
    Price
FROM Products
ORDER BY Category ASC,
         Price DESC
OFFSET 0 ROWS
FETCH NEXT 5 ROWS ONLY;