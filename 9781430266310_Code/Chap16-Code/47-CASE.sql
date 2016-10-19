SELECT CustomerId,
CASE WHEN CreditType = 0 THEN 'Debits' ELSE 'Credits' END
AS TranType,SUM(Amount)
  FROM TransactionDetails.Transactions t
  JOIN TransactionDetails.TransactionTypes tt ON
        tt.TransactionTypeId = t.TransactionType
 WHERE t.DateEntered BETWEEN '1 Jan 2012' AND '4 Jan 2012'
 GROUP BY CustomerId,CreditType
