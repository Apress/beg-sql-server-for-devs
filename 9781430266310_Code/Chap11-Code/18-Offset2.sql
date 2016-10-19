SELECT LEFT(FirstName + ' ' + LastName,50) AS 'Name',
ClearedBalance Balance
FROM CustomerDetails.Customers
WHERE ClearedBalance IS NOT NULL
ORDER BY Balance
OFFSET 4 ROWS
FETCH NEXT 4 ROWS ONLY
