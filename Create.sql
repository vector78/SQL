

--DROP SCHEMA music_shop2 CASCADE;
--CREATE SCHEMA music_shop2;

set schema 'music_shop2';

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
  
CREATE TABLE Customers (
   CustomerID varchar(100) NOT NULL PRIMARY KEY,
   FirstName varchar(100) NOT NULL,
   LastName varchar(100) NOT NULL,
   Email varchar(100)
  );
 
CREATE TABLE CustomerAudits (
   CustomerID varchar(100) NOT NULL PRIMARY KEY,
   LastName VARCHAR(40) NOT NULL,
   TimeChanged TIMESTAMP(6) NOT NULL
)

  

 CREATE TABLE CredentialsSignIn (
   LogID varchar(100) NOT NULL PRIMARY KEY,
   UserName varchar(100) UNIQUE,
   LogTime time,
   UserPassword varchar(100),
   CustomerID varchar(100),
   FOREIGN key (CustomerID) references Customers(CustomerID)
  );
   

CREATE TABLE Transactions (
   PurchaseID varchar(100) NOT NULL PRIMARY KEY,
   Amount float CONSTRAINT positive_amount CHECK (Amount > 0),
   PaymentType varchar(100),
   TrackingNumber varchar(100) UNIQUE,
   CustomerID varchar(100),
   CourierID varchar(100),
   FOREIGN key (CustomerID) references Customers(CustomerID),
   FOREIGN key (CourierID) references Courier(CourierID)
  );

CREATE TABLE Product (
   ProductID varchar(100) NOT NULL PRIMARY KEY,
   Price float CONSTRAINT positive_price CHECK (Price > 0),
   Name varchar(100),
   StoreID varchar(100),
   FOREIGN key (StoreID) references Store(StoreID)
   );
  
CREATE TABLE UprightBass (
   ProductID varchar(100),
   FOREIGN key (ProductID) references Product(ProductID),
   Description varchar(100),
   Manufacturer varchar(100)
   );

CREATE TABLE Ocarina (
   ProductID varchar(100),
   FOREIGN key (ProductID) references Product(ProductID),
   Description varchar(100),
   Manufacturer varchar(100)
   );

  
CREATE TABLE RefundedTransactions (
   RefundID varchar(100) NOT NULL PRIMARY KEY,
   RefundAmount float CONSTRAINT Refunded CHECK (RefundAmount  > 0),
   RefundReason varchar(100),
   CustomerID varchar(100),
   FOREIGN key (CustomerID) references Customers(CustomerID)
   );

CREATE TABLE CustomerAddressInfo (
   Address varchar(100) NOT NULL,
   City varchar(100) NOT NULL,
   Zip varchar(100) NOT NULL,
   State varchar(100),
   PRIMARY KEY (Address, City,Zip),
   CustomerID varchar(100),
   FOREIGN key (CustomerID) references Customers(CustomerID)
   );
 
  
CREATE TABLE CreditCardInfo (
   CardNumber varchar(100) NOT NULL PRIMARY KEY,
   ExpDate date CONSTRAINT date_check CHECK (ExpDate > current_date - 1),
   CustomerID varchar(100),
   FOREIGN key (CustomerID) references Customers(CustomerID)
   );
  
 
CREATE TABLE Employees (
	EmpID varchar(100) NOT NULL PRIMARY KEY,
	EmpFirstName varchar(100),
	EmpLastName varchar(100),
	StoreID varchar(100),
	FOREIGN key (StoreID) references Store(StoreID)  
	);
	
CREATE TABLE Salary (
	AccountID varchar(100) NOT NULL PRIMARY KEY,
	EmpID varchar(100),
	FOREIGN key (EmpID) references Employees(EmpID),
	EmpSalary int CONSTRAINT Salary CHECK (EmpSalary  > 0),
	EmpYears int CONSTRAINT Years CHECK (EmpYears  > 0),
	EmpDOB date 
	   );
	
CREATE TABLE SalaryHistory (
   AccountID varchar(100) NOT NULL PRIMARY KEY,
   EmpSalary int CONSTRAINT Salary CHECK (EmpSalary  > 0),
   TimeChanged TIMESTAMP(6) NOT NULL
)
