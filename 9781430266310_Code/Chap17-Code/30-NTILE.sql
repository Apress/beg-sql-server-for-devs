SELECT NTILE(10) OVER (ORDER BY LastName) AS BatchNumber, 
       CONCAT(FirstName,' ',LastName) AS CustomerName, 
	   UnclearedBalance
  FROM CustomerDetails.Customers
 WHERE UnclearedBalance is not null
 ORDER BY BatchNumber
