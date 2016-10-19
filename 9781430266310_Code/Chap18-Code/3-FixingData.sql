UPDATE CustomerDetails.Customers
SET ClearedBalance = 0
WHERE ClearedBalance IS NULL
GO
DROP INDEX IX_Customers_LastNameZip ON CustomerDetails.Customers
GO
ALTER TABLE CustomerDetails.Customers
ALTER COLUMN ClearedBalance money NOT NULL
GO
CREATE NONCLUSTERED INDEX IX_Customers_LastNameZip ON CustomerDetails.Customers
(
	LastName ASC,
	ZipCode ASC
)
INCLUDE ( 	ClearedBalance) WITH (PAD_INDEX = ON, 
STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, 
DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, 
ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90)
GO

