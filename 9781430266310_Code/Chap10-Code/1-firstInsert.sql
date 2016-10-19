SET QUOTED_IDENTIFIER OFF
GO
USE [ApressFinancial]
GO
INSERT INTO [ShareDetails].[Shares]
           ([Description]
           ,[StockExchangeTicker]
           ,[CurrentPrice])
     VALUES
           ("ACME'S HOMEBAKE COOKIES INC",
            'AHCI',
            2.34125)
