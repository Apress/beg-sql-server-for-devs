SELECT FirstName,LastName,ClearedBalance,UnclearedBalance
FROM CustomerDetails.Customers 
WHERE lastname = 'Prentice'

DECLARE @ValueToUpdate VARCHAR(30)
SET @ValueToUpdate = '1422.26'
UPDATE CustomerDetails.Customers
   SET ClearedBalance = @ValueToUpdate
 WHERE LastName = 'Prentice'

SELECT FirstName,LastName,ClearedBalance,UnclearedBalance
FROM CustomerDetails.Customers 
WHERE lastname = 'Prentice'
