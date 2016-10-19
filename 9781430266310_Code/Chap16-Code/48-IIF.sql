SELECT CustomerId,
IIF(CreditType = 0,'Debits','Credits') 'Debit/Credit',SUM(Amount)
  FROM TransactionDetails.Transactions t
  JOIN TransactionDetails.TransactionTypes tt ON
        tt.TransactionTypeId = t.TransactionType
 WHERE t.DateEntered BETWEEN '1 Jan 2012' AND '4 Jan 2012'
 GROUP BY CustomerId,CreditType
