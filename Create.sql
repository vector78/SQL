

--DROP SCHEMA music_shop2 CASCADE;
--CREATE SCHEMA music_shop2;

CREATE TABLE Courier (
   CourierID varchar(100) NOT NULL PRIMARY KEY,
   CourierName varchar(100),
   DriverFirstName varchar(100),
   DriverLastName varchar(100),
   DriverPhone varchar(100)
  );

CREATE TABLE Store (
   StoreID varchar(100) NOT NULL PRIMARY KEY,
   PhoneNumber varchar(100),
   EmailAddress varchar(100),
   Location varchar(100)
  );
  
CREATE TABLE Users (
   UserID varchar(100) NOT NULL PRIMARY KEY,
   UserName varchar(100),
   FirstName varchar(100),
   LastName varchar(100),
   Email varchar(100)
  );
   

CREATE TABLE Transactions (
   PurchaseID varchar(100) NOT NULL PRIMARY KEY,
   Amount float,
   PaymentType varchar(100),
   TrackingNumber varchar(100),
   UserID varchar(100) references Users(UserID),
   CourierID varchar(100) references Courier(CourierID)
  );

CREATE TABLE Product (
   ProductID varchar(100) NOT NULL PRIMARY KEY,
   Price float,
   Name varchar(100),
   StoreID varchar(100) references Store(StoreID)
   );
  
CREATE TABLE UprightBass (
   ProductID varchar(100) references Product(ProductID),
   Description varchar(100),
   Manufacturer varchar(100)
   );

CREATE TABLE Ocarina (
   ProductID varchar(100) references Product(ProductID),
   Description varchar(100),
   Manufacturer varchar(100)
   );

CREATE TABLE RefundedTransactions (
   RefundID varchar(100) NOT NULL PRIMARY KEY,
   OriginalPurchaseID varchar(100),
   RefundAmount float,
   RefundReason varchar(100),
   UserID varchar(100) 
   );
   
CREATE TABLE CustomerAddressInfo (
   Address varchar(100),
   City varchar(100),
   Zip int,
   State varchar(100),
   PRIMARY KEY (Address, City,Zip),
   UserID varchar(100) references Users(UserID
   );
 
  
CREATE TABLE CreditCardInfo (
   CardNumber varchar(100) NOT NULL PRIMARY KEY,
   ExpDate date,
   UserID varchar(100) references Users(UserID)
   );
  
CREATE TABLE Employees (
	EmpID varchar(100) NOT NULL PRIMARY KEY,
	EmpFirstName varchar(100),
	EmpLastName varchar(100),
	StoreID varchar(100) references Store(StoreID)  
	);
	
CREATE TABLE Salary (
	AccountID varchar(100) NOT NULL PRIMARY KEY,
	EmpID varchar(100) references Employees(EmpID),
	EmpSalary int,
	EmpYears int ,
	EmpDOB date 
	   );
	
