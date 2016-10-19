SET ROWCOUNT 3
SELECT TOP (2) * 
FROM ShareDetails.Shares
WHERE CurrentPrice > 20
ORDER BY Description

SET ROWCOUNT 2
SELECT TOP (3) * 
FROM ShareDetails.Shares
WHERE CurrentPrice > 20
ORDER BY Description

SET ROWCOUNT 0
SELECT TOP (3) * 
FROM ShareDetails.Shares
WHERE CurrentPrice > 20
ORDER BY Description
