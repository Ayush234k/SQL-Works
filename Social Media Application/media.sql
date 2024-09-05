CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    UserName VARCHAR(100)
);

CREATE TABLE Posts (
    PostID INT PRIMARY KEY,
    UserID INT,
    Content TEXT,
    PostDate DATETIME
);

INSERT INTO Users VALUES (1, 'Alice');
INSERT INTO Users VALUES (2, 'Bob');

INSERT INTO Posts VALUES (1, 1, 'Hello World!', '2024-09-01');
INSERT INTO Posts VALUES (2, 2, 'My first post!', '2024-09-02');

SELECT u.UserName, p.Content
FROM Posts p
JOIN Users u ON p.UserID = u.UserID;
