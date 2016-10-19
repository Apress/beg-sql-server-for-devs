-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Robin Dewson
-- Create date: 20th Sept 2014
-- Description:	This is to insert a customer
-- =============================================
CREATE PROCEDURE CustomerDetails.apf_InsertCustomer
    -- Add the parameters for the procedure here
    @CustTitle int,
    @FirstName varchar(50) ,
    @CustInitials varchar(10),
    @LastName varchar(50),
    @AddressLine1 varchar(50),
    @AddressLine2 varchar(50),
    @AddressLine3 varchar(50),
    @TownOrCity int,
    @ZipCode varchar(20),
    @USState tinyint,
    @AccountTypeId int,
	@ClearedBalance money

AS
BEGIN

    INSERT INTO CustomerDetails.Customers (Title, FirstName, 
    OtherInitials,LastName,AddressLine1,AddressLine2,
    AddressLine3, TownOrCity,ZipCode,USState,AccountType,ClearedBalance)
    VALUES (@CustTitle, @FirstName, @CustInitials, @LastName,
    @AddressLine1,@AddressLine2,@AddressLine3,@TownOrCity,
    @ZipCode, @USState, @AccountTypeId,@ClearedBalance)

END
GO
