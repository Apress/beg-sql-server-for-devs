SELECT CustomerId,
CHOOSE(TransactionType,'DEBIT','CREDIT','Share Purchase',
'Dividend','Share Transfer','Interest') as 'Types',
SUM(Amount)
  FROM TransactionDetails.Transactions t
 WHERE t.DateEntered BETWEEN '1 Jan 2012' AND '4 Jan 2012'
 GROUP BY CustomerId,TransactionType
