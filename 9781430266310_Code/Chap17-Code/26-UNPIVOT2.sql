SELECT ProductID,Discount, DiscountAppl
  FROM (SELECT Discount, Product711, Product747, Product776
          FROM #Temp1) up1
UNPIVOT ( DiscountAppl FOR ProductID
    IN (Product711, Product747, Product776)) As upv2
WHERE DiscountAppl <> 0
ORDER BY ProductID
