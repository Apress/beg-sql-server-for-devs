SELECT s.Description,sp.Price,sp.PriceDate
  FROM ShareDetails.SharePrices sp
  RIGHT OUTER JOIN ShareDetails.Shares s ON sp.ShareId = s.ShareId
WHERE sp.PriceDate BETWEEN '1 Jan 2012' and '3 Jan 2012'
