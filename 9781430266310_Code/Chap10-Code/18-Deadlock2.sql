SET LOCK_TIMEOUT  3000
BEGIN TRAN
   DELETE TransactionDetails.Transactions
   DELETE ShareDetails.SharePrices
rollback tran
