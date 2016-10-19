SELECT c. FirstName, LastName,
Trans.TransactionId,TransactionDescription,
DateEntered,Amount
FROM CustomerDetails.Customers AS c
  CROSS APPLY
   TransactionDetails.ReturnTransactions(c.CustomerId)
   AS Trans
