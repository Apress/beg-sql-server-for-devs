DECLARE @MyDate DATETIME 
SELECT @MyDate = 'Jun 1 2015'
SELECT FORMAT(@MyDate, 'dd MMM yyyy', 'en-GB' ) AS UKDate
