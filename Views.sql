set schema 'music_shop2';

Create View UserAddress as
select a.Address,b.FirstName, b.LastName 
from CustomerAddressInfo as a
left join Customers as b
on a.CustomerID = b.CustomerID;

CREATE INDEX idx_user_address
ON CustomerAddressInfo(Address);

CREATE INDEX idx_customer
ON Customers(FirstName,LastName);


SELECT * FROM UserAddress;

Create View RefundCustomers as
select a.FirstName, a.LastName, b.RefundReason 
from Customers as a
left join RefundedTransactions as b
on a.CUSTOMERID = b.CUSTOMERID
where b.RefundReason is not null;

CREATE INDEX idx_refund
ON RefundedTransactions(RefundReason);

SELECT * FROM RefundCustomers;

Create View TrackingInfo as
select a.Amount ,a.TrackingNumber, b.CourierName 
from Transactions as a
left join Courier as b
on a.COURIERID = b.COURIERID;

CREATE INDEX idx_password
ON CredentialsSignIn(Username,UserPassword);


Create View ProductInfo as
select a.Name ,a.Price, b.Location
from Product as a
left join Store as b
on a.STOREID = b.STOREID;

SELECT * FROM ProductInfo;


Create View CardIno as
select a.FirstName ,a.LastName, b.CardNumber, b.ExpDate
from Customers as a
left join CreditCardInfo as b
on a.CustomerID = b.CustomerID;

select * from CardIno;

Create view password as
select a.FirstName ,a.LastName, b.Username, b.UserPassword
from Customers as a
left join CredentialsSignIn as b
on a.CustomerID = b.CustomerID;

select * from password;

CREATE INDEX 
    passwordCredentials
ON password(CustomerID);