BEGIN TRAN
   SELECT COUNT(*) FROM TransactionDetails.Transactions
   DELETE TransactionDetails.Transactions
   SELECT COUNT(*) FROM TransactionDetails.Transactions
ROLLBACK TRAN
SELECT COUNT(*) FROM TransactionDetails.Transactions
