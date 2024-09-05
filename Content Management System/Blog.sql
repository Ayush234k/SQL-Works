CREATE TABLE Articles (
    ArticleID INT PRIMARY KEY,
    Title VARCHAR(100),
    Content TEXT,
    AuthorID INT,
    PublishDate DATETIME
);

CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    Name VARCHAR(100)
);

INSERT INTO Authors VALUES (1, 'Charlie');
INSERT INTO Authors VALUES (2, 'Daisy');

INSERT INTO Articles VALUES (1, 'SQL Basics', 'Learn the basics of SQL.', 1, '2024-09-01');
INSERT INTO Articles VALUES (2, 'Join Types', 'Understanding SQL joins.', 2, '2024-09-02');

SELECT a.Title, au.Name AS Author
FROM Articles a
JOIN Authors au ON a.AuthorID = au.AuthorID;
