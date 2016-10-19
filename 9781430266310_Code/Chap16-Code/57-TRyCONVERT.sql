DECLARE @InputDate char(15)
SET @InputDate = '3 Months'
SELECT TRY_CONVERT(DATE,@InputDate) AS OutputDate
