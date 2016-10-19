SELECT FirstName + ' ' + LastName + 
' has a cleared balance of $' +
CAST (ClearedBalance AS varchar(40))
FROM CustomerDetails.Customers
WHERE FirstName = 'Aubrey'
