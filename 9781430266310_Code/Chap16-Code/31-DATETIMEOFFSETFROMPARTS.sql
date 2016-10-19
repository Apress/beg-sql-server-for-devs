DECLARE @Year int=2015, @Month int=6, @Day int=22
DECLARE @Hour int=23, @Minute int=45, @Seconds int=22
DECLARE @HourOffset int=3, @MinuteOffset int=12
DECLARE @Fractions int=0

SELECT DATETIMEOFFSETFROMPARTS(@Year,@Month,@Day,
@Hour,@Minute,@Seconds,@Fractions,@HourOffset, @MinuteOffset,0)
