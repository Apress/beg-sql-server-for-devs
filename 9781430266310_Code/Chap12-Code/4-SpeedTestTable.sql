USE [ApressFinancial]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [TransactionDetails].[Transactions_SCHEMADATA]
(
	[TransactionId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[TransactionType] [smallint] NOT NULL,
	[DateEntered] [datetime] NOT NULL,
	[Amount] [numeric](18, 5) NOT NULL,
	[ReferenceDetails] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Notes] [varchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[RelatedShareId] [int] NULL,
	[RelatedProductId] [int] NOT NULL,

CONSTRAINT [TransactionsSCHEMADATA_primaryKey] PRIMARY KEY NONCLUSTERED 
(
	[TransactionId] ASC
)
)WITH ( MEMORY_OPTIMIZED = ON , DURABILITY = SCHEMA_AND_DATA )
GO
SET ANSI_PADDING OFF
GO


