set schema 'music_shop2';

Create View UserAddress as
select a.Address,b.FirstName, b.LastName 
from CustomerAddressInfo as a
left join Users as b
on a.USERID = b.USERID;

SELECT * FROM UserAddress;

Create View RefundCustomers as
select a.Username,a.FirstName, a.LastName, b.RefundReason 
from Users as a
left join RefundedTransactions as b
on a.USERID = b.USERID 
where b.RefundReason is not null;

SELECT * FROM RefundCustomers;

Create View TrackingInfo as
select a.Amount ,a.TrackingNumber, b.CourierName 
from Transactions as a
left join Courier as b
on a.COURIERID = b.COURIERID;