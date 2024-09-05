CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(100),
    Price DECIMAL(10, 2)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Customers VALUES (1, 'John Doe', 'john@example.com', '1234567890');
INSERT INTO Customers VALUES (2, 'Jane Smith', 'jane@example.com', '0987654321');

INSERT INTO Products VALUES (1, 'Laptop', 1000.00);
INSERT INTO Products VALUES (2, 'Smartphone', 500.00);

INSERT INTO Orders VALUES (1, 1, '2024-09-01');
INSERT INTO Orders VALUES (2, 2, '2024-09-02');

INSERT INTO OrderDetails VALUES (1, 1, 1, 2); 
INSERT INTO OrderDetails VALUES (2, 2, 2, 1); 

SELECT o.OrderID, c.Name, p.Name AS ProductName, od.Quantity, o.OrderDate
FROM Orders o
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN Products p ON od.ProductID = p.ProductID;
