CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);

INSERT INTO Customers (CustomerID, Name, Email, Phone) VALUES
(1, 'Alice', 'alice@email.com', '9876543210'),
(2, 'Bob', NULL, '9123456789'),
(3, 'Charlie', 'charlie@email.com', NULL),
(4, 'David', NULL, NULL);

SELECT CustomerID, Name, Phone
FROM Customers
WHERE Email IS NULL;

SELECT CustomerID, Name, Email
FROM Customers
WHERE Email IS NOT NULL;

SELECT CustomerID, Name, Phone
FROM Customers
WHERE Email IS NULL AND Phone IS NOT NULL;

UPDATE Customers
SET Email = 'noemail@company.com'
WHERE Email IS NULL;
