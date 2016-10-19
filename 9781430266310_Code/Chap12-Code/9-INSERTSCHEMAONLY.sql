SELECT GETDATE()
GO
INSERT INTO TransactionDetails.Transactions_SCHEMAONLY
(CustomerId, TransactionType, DateEntered, Amount,
   RelatedProductId)
VALUES (1,1,GETDATE(),100,1)
GO 100000
SELECT GETDATE()
GO
