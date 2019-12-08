CREATE TABLE Users (
   UserID varchar(100),
   UserName varchar(100),
   FirstName varchar(100),
   LastName varchar(100),
   Email varchar(100));
   
 CREATE TABLE Transactions (
   PurchaseID varchar(100),
   Amount float,
   PaymentType varchar(100),
   TrackingNumber varchar(100));

   CREATE TABLE Product (
   ProductID varchar(100),
   Price float,
   Title varchar(100),
   Description varchar(100),
   Manufacturer varchar(100)
   
   );
   
   CREATE TABLE Store (
   StoreID varchar(100),
   ContactInfo varchar(100),
   EmailAddress varchar(100),
   Location varchar(100)
   
   
   );
   
   CREATE TABLE RefundedTransactions (
   RefundID varchar(100),
   OriginalPurchaseID varchar(100),
   RefundAmount varchar(100),
   RefundReason varchar(100)
   
   
   );
   
  CREATE TABLE Courier (
   CourierID varchar(100),
   DriverName varchar(100),
   DriverPhone varchar(100)
   
   );
   
  CREATE TABLE CustomerAddressInfo (
   Address varchar(100),
   City varchar(100),
   Zip int,
   State varchar(100),
   
   );
   
   CREATE TABLE CreditCardInfo (
   CardNumber varchar(100),
   ExpDate date,
   Zip int,
   State varchar(100)
   
   );
   
   CREATE TABLE Employees (
   EmpID varchar(100),
   Salary float,
   YearOfService int
   
   );