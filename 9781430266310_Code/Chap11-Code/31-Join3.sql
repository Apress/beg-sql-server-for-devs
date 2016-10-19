SELECT c.FirstName,c.LastName,t.TransactionId,t.Amount,
 s.ShareId,s.Description, s.CurrentPrice
  FROM CustomerDetails.Customers c
  JOIN TransactionDetails.Transactions t ON t.CustomerId = c.CustomerId
  JOIN ShareDetails.Shares s ON s.ShareId = t.RelatedShareId
  JOIN ShareDetails.SharePrices sp ON sp.ShareId = s.ShareId
WHERE s.ShareId < 8
   AND sp.PriceDate BETWEEN '1 Jan 2012' AND '3 Jan 2012'
