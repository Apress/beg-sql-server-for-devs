INSERT CustomerDetails.FinancialProducts(ProductId, ProductName)
    VALUES (NEXT VALUE FOR CustomerDetails.SeqFinancialProducts, 
            'Repurchase Agreements') 
