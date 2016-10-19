DECLARE @InputNumber char(2)
SET @InputNumber = 'KJ'
SELECT TRY_PARSE(@InputNumber as int) AS OutputNumeric
