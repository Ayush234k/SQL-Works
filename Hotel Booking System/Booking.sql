CREATE TABLE Hotels (
    HotelID INT PRIMARY KEY,
    Name VARCHAR(100),
    Location VARCHAR(100)
);

CREATE TABLE Rooms (
    RoomID INT PRIMARY KEY,
    HotelID INT,
    RoomType VARCHAR(100),
    Price DECIMAL(10, 2)
);

CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY,
    RoomID INT,
    CustomerName VARCHAR(100),
    BookingDate DATETIME
);

INSERT INTO Hotels VALUES (1, 'Grand Hotel', 'New York');
INSERT INTO Rooms VALUES (1, 1, 'Suite', 250.00);
INSERT INTO Bookings VALUES (1, 1, 'Alice', '2024-09-01');

SELECT b.CustomerName, h.Name AS HotelName
FROM Bookings b
JOIN Rooms r ON b.RoomID = r.RoomID
JOIN Hotels h ON r.HotelID = h.HotelID;
