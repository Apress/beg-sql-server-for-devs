ALTER TABLE [TransactionDetails].[Transactions] 
DROP CONSTRAINT [FK_Cust_Trans]
GO
ALTER TABLE [TransactionDetails].[Transactions] 
DROP CONSTRAINT [FK_Transactions_Shares]
GO
DROP INDEX IX_CustTransDate ON TransactionDetails.Transactions 
WITH ( ONLINE = OFF )
GO
ALTER TABLE TransactionDetails.Transactions
ADD CONSTRAINT PK_CustTransDate
PRIMARY KEY NONCLUSTERED (CustomerId,DateEntered)

