SELECT sp.ShareId, s.Description,MIN(Price) MinPrice, Max(Price) MaxPrice
  FROM ShareDetails.SharePrices sp
  LEFT JOIN ShareDetails.Shares s ON s.ShareId = sp.ShareId
 WHERE s.Description > 'Julies Pantry'
 GROUP BY ALL sp.ShareId, s.Description
