CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    department VARCHAR(100),
    salary DECIMAL(10, 2)
);


INSERT INTO employees (name, department, salary) VALUES
    ('Alice', 'Sales', 50000),
    ('Bob', 'Engineering', 60000),
    ('Charlie', 'HR', 45000);

SELECT * FROM employees; 
SELECT name, salary FROM employees WHERE department = 'Engineering';

UPDATE employees SET salary = 55000 WHERE id = 3; 
DELETE FROM employees WHERE id = 2; 

SELECT COUNT(*) AS total_employees FROM employees;
SELECT AVG(salary) AS average_salary FROM employees;

SELECT department, AVG(salary) AS avg_salary 
FROM employees 
GROUP BY department 
HAVING avg_salary > 50000;

SELECT name, salary 
FROM employees 
WHERE salary > (SELECT AVG(salary) FROM employees);

SELECT name, salary, 
       RANK() OVER (ORDER BY salary DESC) AS salary_rank 
FROM employees;

WITH high_earners AS (
    SELECT name, salary 
    FROM employees 
    WHERE salary > 50000
)
SELECT * FROM high_earners;