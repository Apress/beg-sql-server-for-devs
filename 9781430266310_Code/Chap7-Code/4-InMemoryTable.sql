CREATE TABLE ShareDetails.CurrentSharePrices
(
    StockExchangeTicker varchar(50) 
	COLLATE Latin1_General_100_BIN2 NOT NULL
	PRIMARY KEY NONCLUSTERED HASH
	WITH (BUCKET_COUNT = 20000),
    CurrentPrice numeric(18,5) NOT NULL,
    LastTickTime smalldatetime NOT NULL
) 
WITH (MEMORY_OPTIMIZED = ON, 
DURABILITY = SCHEMA_AND_DATA)
GO