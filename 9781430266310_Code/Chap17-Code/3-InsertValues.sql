INSERT CustomerDetails.FinancialProducts(ProductId, ProductName)
    VALUES (NEXT VALUE FOR CustomerDetails.SeqFinancialProducts, 
            'Life Insurance') ,
        (NEXT VALUE FOR CustomerDetails.SeqFinancialProducts, 
            'Unit Trusts'),
        (NEXT VALUE FOR CustomerDetails.SeqFinancialProducts, 
            'Investment Trusts') 
