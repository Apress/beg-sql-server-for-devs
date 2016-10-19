CREATE PROCEDURE ShareDetails.AllShareDetails @ShareId int
AS
BEGIN

SELECT ShareId, Description, StockExchangeTicker
  FROM ShareDetails.Shares
 WHERE ShareId = @ShareId

SELECT SharePriceId, ShareId, Price, PriceDate
  FROM ShareDetails.SharePrices
 WHERE ShareId = @ShareId
 ORDER BY PriceDate DESC
END
