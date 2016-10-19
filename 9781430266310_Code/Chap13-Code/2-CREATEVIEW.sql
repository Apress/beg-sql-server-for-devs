CREATE VIEW CustomerDetails.vw_CustTrans
AS
SELECT c.AccountNumber,c.CustomerFirstName,c.CustomerOtherInitials,
tt.TransactionDescription,t.DateEntered,t.Amount,t.ReferenceDetails
FROM CustomerDetails.Customers c
JOIN TransactionDetails.Transactions t ON t.CustomerId = c.CustomerId
JOIN TransactionDetails.TransactionTypes tt ON
  tt.TransactionTypeId = t.TransactionType
WHERE DateEntered >= '1 Jan 2012'
WITH CHECK_OPTION
