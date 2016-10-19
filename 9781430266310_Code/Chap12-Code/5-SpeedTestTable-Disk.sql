USE [ApressFinancial]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [TransactionDetails].[Transactions_DiskBased](
	[TransactionId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[TransactionType] [smallint] NOT NULL,
	[DateEntered] [datetime] NOT NULL,
	[Amount] [numeric](18, 5) NOT NULL,
	[ReferenceDetails] [nvarchar](50) NULL,
	[Notes] [varchar](4000) NULL,
	[RelatedShareId] [int] NULL,
	[RelatedProductId] [int] NOT NULL)
GO
CREATE NONCLUSTERED INDEX IX_Transactions_DiskBased ON TransactionDetails.Transactions_DiskBased
	(
	TransactionId
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE TransactionDetails.Transactions_DiskBased SET (LOCK_ESCALATION = TABLE)
GO
SET ANSI_PADDING OFF
GO


