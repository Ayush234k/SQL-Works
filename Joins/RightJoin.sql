CREATE TABLE Teams (
    TeamID INT PRIMARY KEY,
    TeamName VARCHAR(100),
    LeaderID INT
);

INSERT INTO Teams VALUES (1, 'Development', 1);
INSERT INTO Teams VALUES (2, 'Design', NULL);

SELECT t.TeamName, e.Name AS LeaderName
FROM Teams t
RIGHT JOIN Employees e ON t.LeaderID = e.EmployeeID;
