CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    Product VARCHAR(50),
    Category VARCHAR(50),
    Quantity INT,
    Price DECIMAL(10,2)
);

INSERT INTO Sales (SaleID, Product, Category, Quantity, Price) VALUES
(1, 'Laptop', 'Electronics', 2, 75000),
(2, 'Smartphone', 'Electronics', 5, 30000),
(3, 'Headphones', 'Electronics', 10, 2000),
(4, 'Office Chair', 'Furniture', 3, 7000),
(5, 'Desk', 'Furniture', 2, 12000),
(6, 'Water Bottle', 'Kitchen', 20, 500),
(7, 'Microwave', 'Kitchen', 4, 8000);

SELECT COUNT(*) AS TotalSales
FROM Sales;

SELECT SUM(Quantity * Price) AS TotalRevenue
FROM Sales;

SELECT AVG(Price) AS AveragePrice
FROM Sales;

SELECT MIN(Price) AS LowestPrice, MAX(Price) AS HighestPrice
FROM Sales;

SELECT Category, SUM(Quantity * Price) AS CategoryRevenue
FROM Sales
GROUP BY Category;
