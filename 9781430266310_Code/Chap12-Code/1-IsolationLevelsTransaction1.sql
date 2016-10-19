SET TRANSACTION ISOLATION LEVEL READ COMMITTED
GO
begin tran

INSERT INTO TransactionDetails.Transactions
(CustomerId, TransactionType, DateEntered, Amount,RelatedProductId)
VALUES(1,1,GETDATE(),101.32,1)

SELECT CustomerId, TransactionId, Amount
  FROM TransactionDetails.Transactions
  WITH (SNAPSHOT)
 WHERE CustomerId = 1
   AND Amount = 101.32

-- STOP HERE
-- STOP HERE

rollback tran  