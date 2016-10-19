CREATE TYPE ShareDetails.SharesTmp
AS TABLE(ShareId int NOT NULL,
ShareDesc varchar(50),
Price numeric(18,5),
PriceDate datetime,

INDEX [IX_ShareId] HASH ([ShareId]) WITH ( BUCKET_COUNT = 1)

)
WITH ( MEMORY_OPTIMIZED = ON ) 
GO
DECLARE @SharesTmp ShareDetails.SharesTmp

INSERT INTO @SharesTmp 
SELECT s.ShareId,s.Description,sp.Price,sp.PriceDate
	FROM ShareDetails.Shares s
	JOIN ShareDetails.SharePrices sp ON sp.ShareId = s.ShareId
	WHERE s.ShareId = 1

SELECT ShareId,ShareDesc, Price, PriceDate
	FROM @SharesTmp
