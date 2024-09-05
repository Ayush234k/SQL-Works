CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100),
    ManagerID INT
);

INSERT INTO Projects VALUES (1, 'Project Alpha', 1);
INSERT INTO Projects VALUES (2, 'Project Beta', NULL);

SELECT p.ProjectName, e.Name AS ManagerName
FROM Projects p
LEFT JOIN Employees e ON p.ManagerID = e.EmployeeID;
