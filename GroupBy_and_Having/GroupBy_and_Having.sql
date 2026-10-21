
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    Quantity INT,
    Amount DECIMAL(10,2)
);

INSERT INTO Sales (SaleID, ProductName, Category, Quantity, Amount)
VALUES
(1, 'Laptop', 'Electronics', 2, 150000),
(2, 'Mobile', 'Electronics', 3, 90000),
(3, 'Headphones', 'Electronics', 5, 10000),
(4, 'Chair', 'Furniture', 4, 28000),
(5, 'Table', 'Furniture', 2, 24000),
(6, 'Water Bottle', 'Kitchen', 10, 5000),
(7, 'Microwave', 'Kitchen', 2, 16000),
(8, 'Laptop', 'Electronics', 1, 75000),
(9, 'Chair', 'Furniture', 2, 14000);

SELECT Category,
       SUM(Amount) AS TotalSales
FROM Sales
GROUP BY Category;

SELECT Category,
       COUNT(*) AS TotalOrders
FROM Sales
GROUP BY Category;

SELECT Category,
       AVG(Amount) AS AverageSale
FROM Sales
GROUP BY Category;

SELECT Category,
       SUM(Amount) AS TotalSales
FROM Sales
GROUP BY Category
HAVING SUM(Amount) > 50000;

SELECT Category,
       COUNT(*) AS TotalOrders
FROM Sales
GROUP BY Category
HAVING COUNT(*) > 2;

SELECT Category,
       ProductName,
       SUM(Amount) AS TotalSales
FROM Sales
GROUP BY Category, ProductName;

SELECT *
FROM Sales
WHERE Amount > 20000;

SELECT Category,
       SUM(Amount) AS TotalSales
FROM Sales
GROUP BY Category
HAVING SUM(Amount) > 100000;