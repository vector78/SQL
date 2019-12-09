set schema 'music_shop2';

Create View UserAddress as
select a.Address,b.FirstName, b.LastName,c.Username
from CustomerAddressInfo as a
left join Customers as b
on a.CustomerID = b.CustomerID
left join CredentialsSignIn as c
on a.CustomerID = c.CustomerID

SELECT * FROM UserAddress;

CREATE INDEX idx_user_address
ON CustomerAddressInfo(Address);

CREATE INDEX idx_customer
ON Customers(FirstName,LastName);




Create View RefundCustomers as
select a.FirstName, a.LastName, b.RefundReason,c.Address
from Customers as a
left join RefundedTransactions as b
on a.CUSTOMERID = b.CUSTOMERID
left join CustomerAddressInfo as c
on a.CUSTOMERID = c.CUSTOMERID
where b.RefundReason is not null;

CREATE INDEX idx_refund
ON RefundedTransactions(RefundReason);

SELECT * FROM RefundCustomers;

Create View TrackingInfo as
select a.Amount ,a.TrackingNumber, b.CourierName,c.Address
from Transactions as a
left join Courier as b
on a.COURIERID = b.COURIERID
left join CustomerAddressInfo as c
on a.CUSTOMERID = c.CUSTOMERID;

SELECT * FROM TrackingInfo;

CREATE INDEX idx_password
ON CredentialsSignIn(Username,UserPassword);


Create View ProductInfo2 as
select a.Name ,a.Price, b.location,c.EmpFirstName,c.EmpLastName
from Product as a
left join Store as b
on a.STOREID = b.STOREID
left join Employees as c
on a.STOREID = b.STOREID
where Price < 500;

SELECT * FROM ProductInfo2;


Create View EmpSalaryDetail as
select a.EmpFirstName,a.EmpLastName ,b.location,c.EmpSalary
from Employees as a
left join Store as b
on a.STOREID = b.STOREID
left join SalaryHistory as c
on a.STOREID = b.STOREID
where a.STOREID = '1';


SELECT * FROM EmpSalaryDetail;


Create View CardInformation as
select a.FirstName ,a.LastName, b.CardNumber, b.ExpDate,c.Amount
from Customers as a
left join CreditCardInfo as b
on a.CustomerID = b.CustomerID
left join Transactions as c
on a.CustomerID = c.CustomerID
where c.Amount is not null;

select * from CardInformation;

Create view password as
select a.FirstName ,a.LastName, b.Username, b.UserPassword,c.Address
from Customers as a
left join CredentialsSignIn as b
on a.CustomerID = b.CustomerID
left join CustomerAddressInfo as c
on a.CustomerID = b.CustomerID



select * from password;

CREATE INDEX 
    passwordCredentials
ON password(CustomerID);

Create View RefundStoreInfo as
select a.FirstName, a.LastName, b.RefundReason,c.Location
from Customers as a
left join RefundedTransactions as b
on a.CUSTOMERID = b.CUSTOMERID
left join Store as c
on b.STOREID = c.STOREID
where b.refundreason is not null;

select * from refundStoreInfo;

CREATE INDEX 
    CustomerIDFind
ON Customers(CustomerID);
