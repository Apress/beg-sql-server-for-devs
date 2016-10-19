DECLARE @OldTime datetime
SET @OldTime = '24 March 2015 3:00 PM'
SELECT DATEADD(hh,4,@OldTime)
