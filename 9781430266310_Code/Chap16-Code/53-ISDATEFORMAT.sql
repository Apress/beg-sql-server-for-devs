DECLARE @IsDate char(15)
SET @IsDate = '30 Sep 2015'
SELECT CASE WHEN ISDATE(@IsDate) = 1 
    THEN FORMAT(CONVERT(DATE,@IsDate),'MMM dd yyyy', 'en-GB' )
    ELSE 'Invalid Date'
    END AS 'DateOutput'
