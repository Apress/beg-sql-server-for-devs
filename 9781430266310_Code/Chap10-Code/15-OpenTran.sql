BEGIN TRAN
   SELECT COUNT(*) FROM TransactionDetails.Transactions
   DELETE TransactionDetails.Transactions
