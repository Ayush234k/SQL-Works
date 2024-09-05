CREATE DATABASE sales;
USE sales;

CREATE TABLE Sales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
    sale_date DATE,
    sale_amount DECIMAL(10, 2),
    region VARCHAR(50)
);

INSERT INTO Sales (product_name, sale_date, sale_amount, region)
VALUES ('Product A', '2023-09-01', 200.00, 'North America'),
       ('Product B', '2023-09-01', 150.00, 'Europe'),
       ('Product A', '2023-09-02', 180.00, 'North America'),
       ('Product C', '2023-09-02', 300.00, 'Asia');

SELECT region, SUM(sale_amount) AS total_sales
FROM Sales
GROUP BY region;

SELECT product_name FROM Sales
WHERE sale_amount > (SELECT AVG(sale_amount) FROM Sales);