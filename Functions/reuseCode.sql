CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    Salary DECIMAL(10, 2),
    Bonus DECIMAL(10, 2)
);

INSERT INTO Employees VALUES (1, 'John Doe', 50000, NULL);
INSERT INTO Employees VALUES (2, 'Jane Doe', 60000, NULL);

DELIMITER $$
CREATE PROCEDURE CalculateBonus()
BEGIN
    UPDATE Employees
    SET Bonus = Salary * 0.10; 
END$$
DELIMITER ;

CALL CalculateBonus();

SELECT * FROM Employees;
