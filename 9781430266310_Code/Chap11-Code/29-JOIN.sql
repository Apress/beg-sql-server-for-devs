SELECT s.ShareId, s.Description,sp.Price,sp.PriceDate
  FROM ShareDetails.Shares s
  JOIN ShareDetails.SharePrices sp ON sp.ShareId = s.ShareId
 WHERE s.ShareId < 8
   AND sp.PriceDate BETWEEN '1 Jan 2012' AND '3 Jan 2012'
