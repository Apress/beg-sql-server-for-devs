DECLARE @MyDate datetime= GETDATE(), @CurrPriceInCents money
SELECT @CurrPriceInCents = CurrentPrice * 100
  FROM ShareDetails.Shares
--WHERE ShareId = 2
--GO
SELECT @MyDate,@CurrPriceInCents
