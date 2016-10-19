DECLARE @StatementDate datetime
SET @StatementDate = '24 March 2015 3:00 PM'
SELECT DATENAME(dw,@StatementDate)
