DECLARE @Year int=2015, @Month int=12, @Day int=30
DECLARE @Hour int=14, @Minute int=45

SELECT FORMAT(DATEFROMPARTS(@Year,@Month,@Day),
'dd MMMM yyyy','en-GB')

SELECT FORMAT(SMALLDATETIMEFROMPARTS(@Year,@Month,@Day,
@Hour,@Minute),'dd MMMM yyyy hh:mm tt','en-GB')
