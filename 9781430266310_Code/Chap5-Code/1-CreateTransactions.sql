USE ApressFinancial
GO
CREATE TABLE TransactionDetails.Transactions
    (TransactionId int IDENTITY(1,1) NOT NULL,
    CustomerId int NOT NULL,
    TransactionType smallint NOT NULL,
    DateEntered datetime NOT NULL,
	Amount numeric(18, 5) NOT NULL,
    ReferenceDetails nvarchar(50) NULL,
    Notes nvarchar(max)  NULL,
    RelatedShareId int NULL,
    RelatedProductId int NOT NULL)
