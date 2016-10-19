SET TRANSACTION ISOLATION LEVEL READ COMMITTED
GO
begin tran
-- will return no row
SELECT CustomerId, TransactionId, Amount
  FROM TransactionDetails.Transactions
  WITH (SNAPSHOT)
 WHERE CustomerId = 1
   AND Amount = 101.32

-- STOP HERE
-- STOP HERE

-- will return no row
SELECT CustomerId, TransactionId, Amount
  FROM TransactionDetails.Transactions
  WITH (SNAPSHOT)
 WHERE CustomerId = 1
   AND Amount = 101.32


ROLLBACK TRAN