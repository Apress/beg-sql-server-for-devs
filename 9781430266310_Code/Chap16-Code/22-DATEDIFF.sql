DECLARE @FirstTime datetime, @SecondTime datetime
SET @FirstTime = '24 March 2015 3:00 PM'
SET @SecondTime = '24 March 2015 3:33PM'
SELECT DATEDIFF(ms,@FirstTime,@SecondTime)
