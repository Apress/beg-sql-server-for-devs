CREATE FUNCTION TransactionDetails.fn_IntCalc 
(@InterestRate numeric(6,3)=10,@Amount numeric(18,5),
 @FromDate Date, @ToDate Date)
RETURNS numeric(18,5)
WITH EXECUTE AS CALLER
AS
BEGIN
    DECLARE @IntCalculated numeric(18,5)
    SELECT @IntCalculated = @Amount *
            ((@InterestRate/100.00) * (DATEDIFF(d,@FromDate, @ToDate) / 365.00))
    RETURN(ISNULL(@IntCalculated,0))
END
GO
