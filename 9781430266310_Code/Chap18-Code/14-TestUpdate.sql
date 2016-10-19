begin tran
SELECT *
  FROM TransactionDetails.Transactions_old
 WHERE TransactionId=1002
SELECT ClearedBalance
  FROM CustomerDetails.Customers
 WHERE CustomerId = 2
UPDATE TransactionDetails.Transactions_old
   SET DateEntered = DATEADD(dd,-1,DateEntered)
 WHERE TransactionId = 1002
SELECT *
  FROM TransactionDetails.Transactions_old
 WHERE TransactionId=1002
SELECT ClearedBalance
  FROM CustomerDetails.Customers
 WHERE CustomerId = 2
rollback tran