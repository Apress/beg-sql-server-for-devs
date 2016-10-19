SELECT LEFT(FirstName + ' ' + LastName,50) AS 'Name',
ClearedBalance Balance
FROM CustomerDetails.Customers
WHERE ClearedBalance IS NOT NULL
ORDER BY Balance
