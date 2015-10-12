DROP DATABASE LargeBank

CREATE DATABASE LargeBank
GO

USE LargeBank
GO

CREATE TABLE Customers
(
CustomerID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,

CreatedDate DateTime NOT NULL,

FirstName VARCHAR(100) NOT NULL,

LastName VARCHAR(100) NOT NULL,

Address1 VARCHAR(200) NOT NULL,

Address2 VARCHAR(200),

City VARCHAR(200) NOT NULL,

States VARCHAR(150) NOT NULL,

Zip VARCHAR(15) NOT NULL,
)
CREATE TABLE Accounts
(
AccountID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,

CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID) NOT NULL,

CreatedDate DATETIME NOT NULL,

AccountNumber INT NOT NULL,

Balance INT,
)
CREATE TABLE Transactions
(
TransactionID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,

AccountID INT FOREIGN KEY REFERENCES Accounts(AccountID) NOT NULL,

TransactionDate DATETIME NOT NULL,

Amount INT NOT NULL,
)
CREATE TABLE Statements
(
StatementID INT IDENTITY (1,1) PRIMARY KEY NOT NULL,

AccountID INT FOREIGN KEY REFERENCES Accounts(AccountID) NOT NULL,

CreatedDate DATETIME NOT NULL,

StartDate DATETIME NOT NULL,

EndDate DATETIME,
)
INSERT INTO Customers (CreatedDate, FirstName, LastName, Address1, City, States, Zip) VALUES (2013-06-09, 'John', 'Doe', '123 Fake Street', 'San Diego', 'CA', '92101')

INSERT INTO Customers (CreatedDate, FirstName, LastName, Address1, City, States, Zip) VALUES (2013-06-09, 'Jane', 'Doe', '124 Fake Street', 'San Diego', 'CA', '92101')

INSERT INTO Accounts (CustomerID, CreatedDate, AccountNumber, Balance) VALUES (1, 2013-06-09, 1000, 937.67)

INSERT INTO Accounts (CustomerID, CreatedDate, AccountNumber, Balance) VALUES (1, 2013-07-28, 1001, 5000)

INSERT INTO Accounts (CustomerID, CreatedDate, AccountNumber, Balance) VALUES (2, 2014-02-01, 1002, 1197465.05)

INSERT INTO Transactions (AccountID, TransactionDate, Amount) Values (1, 2013-06-09, 1000)

INSERT INTO Transactions (AccountID, TransactionDate, Amount) Values (1, 2013-06-10, -55.34)

INSERT INTO Transactions (AccountID, TransactionDate, Amount) Values (1, 2013-07-22, -6.99)

INSERT INTO Transactions (AccountID, TransactionDate, Amount) Values (2, 2013-07-28, 1000)

INSERT INTO Transactions (AccountID, TransactionDate, Amount) Values (2, 2013-08-28, 1000)

INSERT INTO Transactions (AccountID, TransactionDate, Amount) Values (2, 2013-09-28, 1000)

INSERT INTO Transactions (AccountID, TransactionDate, Amount) Values (2, 2013-09-28, 1000)

INSERT INTO Transactions (AccountID, TransactionDate, Amount) Values (2, 2013-10-28, 1000)

INSERT INTO Transactions (AccountID, TransactionDate, Amount) Values (3, 2014-02-01, 1200000)

INSERT INTO Transactions (AccountID, TransactionDate, Amount) Values (3, 2014-02-10, -2534.95)

INSERT INTO Statements (AccountID, StartDate, EndDate, CreatedDate) VALUES (1, 2013-06-09, 2013-06-30, 2013-06-30)

INSERT INTO Statements (AccountID, StartDate, EndDate, CreatedDate) VALUES (1, 2013-07-01, 2013-07-31, 2013-07-31)

INSERT INTO Statements (AccountID, StartDate, EndDate, CreatedDate) VALUES (2, 2013-07-28, 2013-07-31, 2013-07-31)

INSERT INTO Statements (AccountID, StartDate, EndDate, CreatedDate) VALUES (2, 2013-08-01, 2013-08-31, 2013-08-31)

INSERT INTO Statements (AccountID, StartDate, EndDate, CreatedDate) VALUES (2, 2013-09-01, 2013-09-30, 2013-09-30)

INSERT INTO Statements (AccountID, StartDate, EndDate, CreatedDate) VALUES (2, 2013-10-01, 2013-10-31, 2013-10-31)

INSERT INTO Statements (AccountID, StartDate, EndDate, CreatedDate) VALUES (3, 2014-02-01, 2014-02-28, 2014-02-28)