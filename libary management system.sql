-- Library Management System SQL Schema

-- Table: Members
CREATE TABLE Members (
  MemberID INT AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(100) NOT NULL,
  Email VARCHAR(100) UNIQUE NOT NULL,
  Phone VARCHAR(15) NOT NULL,
  Address TEXT,
  DateJoined DATE NOT NULL
);

-- Table: Books
CREATE TABLE Books (
  BookID INT AUTO_INCREMENT PRIMARY KEY,
  Title VARCHAR(200) NOT NULL,
  Author VARCHAR(100) NOT NULL,
  ISBN VARCHAR(13) UNIQUE NOT NULL,
  PublishedYear YEAR,
  CopiesAvailable INT NOT NULL DEFAULT 0
);

-- Table: BorrowingRecords
CREATE TABLE BorrowingRecords (
  RecordID INT AUTO_INCREMENT PRIMARY KEY,
  MemberID INT NOT NULL,
  BookID INT NOT NULL,
  BorrowedDate DATE NOT NULL,
  DueDate DATE NOT NULL,
  ReturnedDate DATE,
  FOREIGN KEY (MemberID) REFERENCES Members (MemberID),
  FOREIGN KEY (BookID) REFERENCES Books (BookID)
);