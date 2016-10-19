SELECT s.ShareId,s.Description,sp.Price,sp.PriceDate
  FROM ShareDetails.Shares s
  LEFT OUTER JOIN ShareDetails.SharePrices sp ON sp.ShareId = s.ShareId
 WHERE  sp.PriceDate IS NULL
