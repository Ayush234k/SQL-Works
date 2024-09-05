CREATE DATABASE school;
USE school;

CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    class VARCHAR(50)
);

INSERT INTO Students (name, age, class) VALUES ('Alice', 14, '8th Grade');
INSERT INTO Students (name, age, class) VALUES ('Bob', 15, '9th Grade');

UPDATE Students SET age = 16 WHERE name = 'Bob';

DELETE FROM Students WHERE name = 'Alice';

SELECT * FROM Students;
