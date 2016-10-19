DECLARE @Year int=2015, @Month int=6, @Day int=22
DECLARE @Hour int=23, @Minute int=45, @Seconds int=22
DECLARE @Fractions int=231

SELECT FORMAT(DATETIME2FROMPARTS(@Year,@Month,@Day,@Hour,
@Minute,@Seconds,@Fractions,3),
'hh:mm:ss:ffff tt','en-GB')
