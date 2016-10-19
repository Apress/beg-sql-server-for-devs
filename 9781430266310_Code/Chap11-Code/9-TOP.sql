SELECT TOP (3) * 
FROM ShareDetails.Shares
WHERE CurrentPrice > 20
ORDER BY Description
