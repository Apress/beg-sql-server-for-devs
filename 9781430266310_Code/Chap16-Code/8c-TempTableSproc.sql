CREATE PROCEDURE ShareDetails.TableVariable
AS
BEGIN
	DECLARE @SharesTmp
	TABLE(ShareDesc varchar(50),
	Price numeric(18,5),
	PriceDate datetime)

	INSERT INTO @SharesTmp
	SELECT s.Description,sp.Price,sp.PriceDate
	  FROM ShareDetails.Shares s
	  JOIN ShareDetails.SharePrices sp ON sp.ShareId = s.ShareId
	 WHERE s.ShareId = 1

	SELECT ShareDesc, Price, PriceDate
	  FROM @SharesTmp RECOMPILE
END
GO
EXEC ShareDetails.TableVariable
