SELECT GETDATE()
GO
INSERT INTO TransactionDetails.Transactions_DiskBased
(CustomerId, TransactionType, DateEntered, Amount,
   RelatedProductId)
VALUES (1,1,'2014-11-05 23:22:11',100,1)
GO 100000
SELECT GETDATE()
GO
-- 43 seconds
