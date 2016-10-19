INSERT CustomerDetails.FinancialProducts(ProductId, ProductName)
    VALUES (NEXT VALUE FOR CustomerDetails.SeqFinancialProducts, 
            'Repurchase Agreements') 

SELECT ProductId,ProductName
FROM CustomerDetails.FinancialProducts
ORDER BY ProductId
