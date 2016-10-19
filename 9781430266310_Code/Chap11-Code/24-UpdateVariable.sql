SELECT FirstName,LastName,ClearedBalance,UnclearedBalance
FROM CustomerDetails.Customers 
WHERE lastname = 'Booth'

DECLARE @ValueToUpdate VARCHAR(30)
SET @ValueToUpdate = 'Prentice'
UPDATE CustomerDetails.Customers
   SET LastName = @ValueToUpdate,
       ClearedBalance = ClearedBalance + UnclearedBalance ,
       UnclearedBalance = 0
 WHERE LastName = 'Booth'

SELECT FirstName,LastName,ClearedBalance,UnclearedBalance
FROM CustomerDetails.Customers 
WHERE lastname = 'Prentice'
