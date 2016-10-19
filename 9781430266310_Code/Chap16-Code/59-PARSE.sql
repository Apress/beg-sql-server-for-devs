DECLARE @InputNumber char(2)
SET @InputNumber = 'KJ'
SELECT PARSE(@InputNumber as int) AS OutputNumeric
