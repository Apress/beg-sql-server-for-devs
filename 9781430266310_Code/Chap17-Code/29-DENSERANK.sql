SELECT ROW_NUMBER() OVER (PARTITION BY SUBSTRING(LastName,1,2) 
       ORDER BY LastName) AS RowNum, 
	   DENSE_RANK() OVER(ORDER BY SUBSTRING(LastName,1,2) ) AS Ranking,
       CONCAT(FirstName,' ',LastName) AS CustomerName, 
	   UnclearedBalance
  FROM CustomerDetails.Customers
 WHERE UnclearedBalance is not null
 ORDER BY Ranking
