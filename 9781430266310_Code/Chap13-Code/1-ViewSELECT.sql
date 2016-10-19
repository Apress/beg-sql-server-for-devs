SELECT c.CustomerId,c.FirstName,c.OtherInitials,
t.DateEntered,t.Amount,t.ReferenceDetails
FROM CustomerDetails.Customers c
JOIN TransactionDetails.Transactions t 
  ON t.CustomerId = c.CustomerId
WHERE DateEntered >= '1 Jan 2012'
