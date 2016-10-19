SELECT TOP 100 s.ShareId,sp.SharePriceId,
s.Description,sp.Price,sp.PriceDate
  FROM ShareDetails.SharePrices sp
  CROSS JOIN ShareDetails.Shares s
WHERE sp.PriceDate BETWEEN '1 Jan 2012' and '3 Jan 2012'
ORDER BY ShareId,SharePriceId
