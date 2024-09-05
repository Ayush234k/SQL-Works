CREATE DATABASE bookstore;
USE bookstore;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
    price DECIMAL(10, 2)
);

CREATE TABLE OrderDetails (
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    PRIMARY KEY (order_id, product_id)
);

INSERT INTO Customers (name, email) VALUES ('John Doe', 'john@example.com');
INSERT INTO Products (product_name, price) VALUES ('Book 1', 9.99), ('Book 2', 14.99);
INSERT INTO Orders (customer_id, order_date, total_amount) VALUES (1, '2023-09-01', 24.98);
INSERT INTO OrderDetails (order_id, product_id, quantity) VALUES (1, 1, 1), (1, 2, 1);

SELECT * FROM Orders;
