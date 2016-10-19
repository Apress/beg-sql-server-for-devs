DECLARE @Hour int=14, @Minute int=45, @Seconds int=22
DECLARE @Fractions int=2

SELECT FORMAT(CONVERT(datetime,TIMEFROMPARTS
(@Hour,@Minute,@Seconds,@Fractions,2)),
'hh:mm:ss:ffff tt','en-GB')
