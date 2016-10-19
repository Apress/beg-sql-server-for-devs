SELECT DISTINCT s.Description,sp.Price,sp.PriceDate
  FROM ShareDetails.Shares s
  JOIN ShareDetails.SharePrices sp ON sp.ShareId = s.ShareId
