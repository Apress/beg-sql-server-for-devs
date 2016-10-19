SELECT s.Description,sp.Price,sp.PriceDate
  FROM ShareDetails.SharePrices sp
  FULL OUTER JOIN ShareDetails.Shares s ON sp.ShareId = s.ShareId
 WHERE s.Description IS NULL
    OR sp.Price IS NULL
