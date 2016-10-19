DECLARE @InputDate char(15), @DateValue date, @DateRange date 
DECLARE @Default varchar(15)
SET @InputDate = '3 Sep 2015'
-- SET @InputDate = '03'
-- SET @InputDate = 'Rubbish'

SELECT @DateValue  = TRY_CONVERT(DATE,@InputDate),
    @DateRange = IIF(TRY_CONVERT(int,@InputDate) IS NULL,NULL,
        DATEADD(d,CONVERT(int,@InputDate),'30 Dec 2016')),
    @Default = IIF(TRY_CONVERT(DATE,@InputDate) IS NULL,
        IIF(TRY_CONVERT(int,@InputDate) IS NULL,@InputDate,
                NULL),NULL)
SELECT @DateValue, @DateRange, @Default

-- SET @InputDate = '3 Sep 2015'
SET @InputDate = '03'
-- SET @InputDate = 'Rubbish'

SELECT @DateValue  = TRY_CONVERT(DATE,@InputDate),
    @DateRange = IIF(TRY_CONVERT(int,@InputDate) IS NULL,NULL,
        DATEADD(d,CONVERT(int,@InputDate),'30 Dec 2016')),
    @Default = IIF(TRY_CONVERT(DATE,@InputDate) IS NULL,
        IIF(TRY_CONVERT(int,@InputDate) IS NULL,@InputDate,
                NULL),NULL)
SELECT @DateValue, @DateRange, @Default


-- SET @InputDate = '3 Sep 2015'
-- SET @InputDate = '03'
SET @InputDate = 'Rubbish'

SELECT @DateValue  = TRY_CONVERT(DATE,@InputDate),
    @DateRange = IIF(TRY_CONVERT(int,@InputDate) IS NULL,NULL,
        DATEADD(d,CONVERT(int,@InputDate),'30 Dec 2016')),
    @Default = IIF(TRY_CONVERT(DATE,@InputDate) IS NULL,
        IIF(TRY_CONVERT(int,@InputDate) IS NULL,@InputDate,
                NULL),NULL)
SELECT @DateValue, @DateRange, @Default
