SELECT c.FirstName,c.LastName,t.TransactionId,t.Amount,
 s.ShareId,s.Description, s.CurrentPrice,
 sp.Price
  FROM CustomerDetails.Customers c
  JOIN TransactionDetails.Transactions t 
                  ON t.CustomerId = c.CustomerId
  JOIN ShareDetails.Shares s 
                  ON s.ShareId = t.RelatedShareId
  LEFT OUTER JOIN ShareDetails.SharePrices sp 
                  ON sp.ShareId = s.ShareId
 WHERE sp.Price IS NULL
