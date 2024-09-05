CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    AvailableCopies INT
);

CREATE TABLE Members (
    MemberID INT PRIMARY KEY,
    Name VARCHAR(100)
);

CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    TransactionDate DATETIME
);

INSERT INTO Books VALUES (1, '1984', 'George Orwell', 5);
INSERT INTO Members VALUES (1, 'Eve');
INSERT INTO Transactions VALUES (1, 1, 1, '2024-09-01');

SELECT * FROM Books WHERE AvailableCopies > 0;

SELECT * FROM Transactions;
