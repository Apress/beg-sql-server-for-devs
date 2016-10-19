SELECT 'Before',ShareId,Description,CurrentPrice
  FROM ShareDetails.Shares
 WHERE ShareId = 3
BEGIN TRAN ShareUpd
UPDATE ShareDetails.Shares
   SET CurrentPrice = CurrentPrice * 1.1
-- WHERE ShareId = 3
SELECT 'Within the transaction',ShareId,Description,CurrentPrice
  FROM ShareDetails.Shares
ROLLBACK TRAN
SELECT 'After',ShareId,Description,CurrentPrice
  FROM ShareDetails.Shares
 WHERE ShareId = 3
