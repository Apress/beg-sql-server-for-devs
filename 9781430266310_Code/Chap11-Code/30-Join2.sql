SELECT s.Description,sp.Price,sp.PriceDate
  FROM ShareDetails.Shares s
  JOIN ShareDetails.SharePrices sp ON sp.ShareId = s.ShareId
   AND sp.Price < s.CurrentPrice
WHERE s.ShareId < 8
   AND sp.PriceDate BETWEEN '1 Jan 2012' AND '3 Jan 2012'
