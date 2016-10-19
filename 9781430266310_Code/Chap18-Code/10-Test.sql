SELECT *
  FROM TransactionDetails.Transactions_old
 WHERE CustomerId = 2
SELECT ClearedBalance
  FROM CustomerDetails.Customers
 WHERE CustomerId = 2
UPDATE TransactionDetails.Transactions_old
   SET Amount = 100
 WHERE TransactionId = 1002 -- Alter as required
SELECT *
  FROM TransactionDetails.Transactions_old
 WHERE CustomerId = 2
SELECT ClearedBalance
  FROM CustomerDetails.Customers
 WHERE CustomerId = 2
