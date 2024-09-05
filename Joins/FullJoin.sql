CREATE TABLE Contractors (
    ContractorID INT PRIMARY KEY,
    ContractorName VARCHAR(100)
);

INSERT INTO Contractors VALUES (1, 'Alice Green');
INSERT INTO Contractors VALUES (2, 'Charlie Brown');

SELECT e.Name AS EmployeeName, c.ContractorName
FROM Employees e
FULL OUTER JOIN Contractors c ON e.EmployeeID = c.ContractorID;
