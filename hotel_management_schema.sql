-- Create the hotel_management_db database
CREATE DATABASE hotel_management_db;
-- Use the hotel_management_db database
USE hotel_management_db;

-- Create the tables as described in the previous response
-- (Create Hotel, Room, Guest, Reservation, Staff, and Service tables)


-- Create the Hotel table
CREATE TABLE Hotel (
    HotelID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Address VARCHAR(255),
    City VARCHAR(255),
    State VARCHAR(255),
    ZipCode VARCHAR(10),
    Phone VARCHAR(15),
    Email VARCHAR(255),
    Website VARCHAR(255)
);

-- Create the Room table
CREATE TABLE Room (
    RoomID INT AUTO_INCREMENT PRIMARY KEY,
    HotelID INT,
    RoomNumber VARCHAR(10),
    RoomType VARCHAR(50),
    BedCount INT,
    PricePerNight DECIMAL(10, 2),
    IsOccupied BOOLEAN,
    LastCleaningDate DATE,
    Description TEXT,
    FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID)
);

-- Create the Guest table
CREATE TABLE Guest (
    GuestID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE,
    Email VARCHAR(255),
    Phone VARCHAR(15),
    Address VARCHAR(255),
    City VARCHAR(255),
    State VARCHAR(255),
    ZipCode VARCHAR(10),
    Nationality VARCHAR(50)
);

-- Create the Reservation table
CREATE TABLE Reservation (
    ReservationID INT AUTO_INCREMENT PRIMARY KEY,
    GuestID INT,
    RoomID INT,
    CheckInDate DATE,
    CheckOutDate DATE,
    TotalCost DECIMAL(10, 2),
    IsPaid BOOLEAN,
    FOREIGN KEY (GuestID) REFERENCES Guest(GuestID),
    FOREIGN KEY (RoomID) REFERENCES Room(RoomID)
);

-- Create the Staff table
CREATE TABLE Staff (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE,
    Email VARCHAR(255),
    Phone VARCHAR(15),
    Address VARCHAR(255),
    City VARCHAR(255),
    State VARCHAR(255),
    ZipCode VARCHAR(10),
    Position VARCHAR(50),
    Salary DECIMAL(10, 2)
);

-- Create the Service table
CREATE TABLE Service (
    ServiceID INT AUTO_INCREMENT PRIMARY KEY,
    ServiceName VARCHAR(100) NOT NULL,
    Description TEXT,
    Price DECIMAL(10, 2)
);