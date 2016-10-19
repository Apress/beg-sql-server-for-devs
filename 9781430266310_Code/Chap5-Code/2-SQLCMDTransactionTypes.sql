USE ApressFinancial
GO
CREATE TABLE TransactionDetails.TransactionTypes
(
    TransactionTypeId smallint IDENTITY(1,1) NOT NULL,
    Description varchar(50) NOT NULL, 
    CreditType bit NOT NULL
)
GO
