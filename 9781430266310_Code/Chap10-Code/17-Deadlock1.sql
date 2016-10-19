BEGIN TRAN
   SELECT COUNT(*) FROM TransactionDetails.Transactions
   DELETE ShareDetails.SharePrices
