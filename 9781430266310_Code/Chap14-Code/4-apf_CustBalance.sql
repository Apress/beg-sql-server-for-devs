-- ===============================================
-- Create stored procedure with OUTPUT parameters
-- ===============================================
-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'CustomerDetails'
     AND SPECIFIC_NAME = N'apf_CustBalance' 
)
   DROP PROCEDURE CustomerDetails.apf_CustBalance
GO

CREATE PROCEDURE CustomerDetails.apf_CustBalance
    @CustomerId int,
    @ClearedBalance money OUTPUT, @UnclearedBalance money OUTPUT
AS

BEGIN
SELECT @ClearedBalance = ClearedBalance, @UnclearedBalance = UnclearedBalance
  FROM CustomerDetails.Customers
 WHERE CustomerId = @CustomerId

    RETURN @@ROWCOUNT
END
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
DECLARE @ClearedBalance Money, @UnclearedBalance Money
DECLARE @RetVal int

EXECUTE @RetVal=CustomerDetails.apf_CustBalance 2,
@ClearedBalance OUTPUT,
@UnclearedBalance OUTPUT

SELECT @RetVal AS ReturnValue, @ClearedBalance AS ClearedBalance,
@UnclearedBalance AS UnclearedBalance
GO
