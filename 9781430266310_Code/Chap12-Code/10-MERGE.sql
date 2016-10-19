BEGIN TRAN

INSERT INTO TransactionDetails.Transactions 
(CustomerId, TransactionType, DateEntered, Amount, RelatedShareId,RelatedProductId)
values (1,1,GETDATE(),1876.11,1,1)

SELECT TransactionId, CustomerId, Amount 
  FROM TransactionDetails.Transactions_old
 WHERE CustomerId = 1

MERGE INTO TransactionDetails.Transactions_old target
USING TransactionDetails.Transactions source WITH (SNAPSHOT)
   ON (target.CustomerId = source.CustomerId
  AND target.TransactionId = source.TransactionId)
 WHEN MATCHED THEN
      UPDATE
	    SET target.Amount = source.Amount
 WHEN NOT MATCHED THEN
      INSERT (CustomerId, TransactionType,
	          DateEntered,Amount,
			  RelatedShareId,
			  RelatedProductId)
	  VALUES (source.CustomerId, source.TransactionType,
              source.DateEntered, source.Amount,
              source.RelatedShareId,
			  COALESCE(source.RelatedProductId,1))
;
SELECT TransactionId, CustomerId, Amount 
  FROM TransactionDetails.Transactions_old
 WHERE CustomerId = 1

ROLLBACK TRAN
GO
