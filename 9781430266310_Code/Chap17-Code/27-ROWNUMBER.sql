USE ApressFinancial
GO
SELECT ROW_NUMBER() OVER (ORDER BY LastName) AS RowNum, 
       CONCAT(FirstName,' ',LastName) AS CustomerName, 
	   UnclearedBalance
  FROM CustomerDetails.Customers
 WHERE UnclearedBalance is not null
