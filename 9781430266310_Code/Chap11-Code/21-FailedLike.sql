SELECT FirstName + ' ' + LastName AS [Name]
FROM CustomerDetails.Customers
WHERE [Name] LIKE '%q%'
