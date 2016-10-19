SELECT ProductID,UnitPriceDiscount,SUM(LineTotal)
  FROM Sales.SalesOrderDetail
  WHERE ProductID IN (776,711,747)
  GROUP BY ProductID,UnitPriceDiscount
  ORDER BY ProductID,UnitPriceDiscount
