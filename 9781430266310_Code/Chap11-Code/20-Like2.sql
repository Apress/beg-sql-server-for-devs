SELECT FirstName + ' ' + LastName AS [Name]
FROM CustomerDetails.Customers
WHERE FirstName + ' ' + LastName LIKE '%q%'
