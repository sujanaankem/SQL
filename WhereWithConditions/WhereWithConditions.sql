CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT
);

INSERT INTO Products (ProductID, ProductName, Category, Price, Stock) VALUES
(1, 'Laptop', 'Electronics', 75000, 10),
(2, 'Smartphone', 'Electronics', 30000, 25),
(3, 'Headphones', 'Electronics', 2000, 50),
(4, 'Office Chair', 'Furniture', 7000, 15),
(5, 'Desk', 'Furniture', 12000, 5),
(6, 'Water Bottle', 'Kitchen', 500, 100),
(7, 'Microwave', 'Kitchen', 8000, 8);

/*1. Equal To (=)*/

SELECT ProductName, Category, Price
FROM Products
WHERE Category = 'Furniture';

/*2. Not Equal To (!=)*/
SELECT ProductName, Category, Price
FROM Products
WHERE Category != 'Electronics';

/*3. Less Than (<)*/
SELECT ProductName, Price
FROM Products
WHERE Price < 10000;

/*4. Greater Than (>)*/
SELECT ProductName, Stock
FROM Products
WHERE Stock > 20;

/*5. Between (BETWEEN)*/
SELECT ProductName, Price
FROM Products
WHERE Price BETWEEN 5000 AND 20000;

/*6. In (IN)*/
SELECT ProductName, Category
FROM Products
WHERE Category IN ('Electronics', 'Kitchen');
