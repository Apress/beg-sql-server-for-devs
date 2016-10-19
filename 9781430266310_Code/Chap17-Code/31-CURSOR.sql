BEGIN TRAN

DECLARE @FirstName varchar(50), @LastName varchar(50),
        @ProductName nvarchar(50), @Amount money,
        @LastCollect datetime

DECLARE @TotalCollected money = 0, @DateCollected datetime = '1 Apr 2012'
SELECT @DateCollected, COUNT(*)
           FROM CustomerDetails.Customers c 
           JOIN CustomerDetails.CustomerProducts cp 
                 ON cp.CustomerId = c.CustomerId
           JOIN CustomerDetails.FinancialProducts f 
                 ON f.ProductId = cp.FinancialProductId
          WHERE cp.Frequency = 2
            AND cp.LastCollected BETWEEN '1 Mar 2012' AND '31 Mar 2012'
			AND cp.LastCollection > '1 Apr 2012'
DECLARE FinProductsColl CURSOR 
     FOR SELECT c.FirstName, c.LastName, f.ProductName, 
                cp.AmountToCollect, cp.LastCollected
           FROM CustomerDetails.Customers c 
           JOIN CustomerDetails.CustomerProducts cp 
                 ON cp.CustomerId = c.CustomerId
           JOIN CustomerDetails.FinancialProducts f 
                 ON f.ProductId = cp.FinancialProductId
          WHERE cp.Frequency = 2
            AND cp.LastCollected BETWEEN '1 Mar 2012' AND '31 Mar 2012'
			AND cp.LastCollection > '1 Apr 2012'
	FOR UPDATE
	OF LastCollected

OPEN FinProductsColl

FETCH NEXT FROM FinProductsColl 
INTO @FirstName, @LastName, @ProductName, @Amount, @LastCollect

WHILE @@FETCH_STATUS = 0
BEGIN

    SELECT @TotalCollected = @TotalCollected + @Amount

--    SELECT @FirstName, @LastName, @ProductName, @Amount,
--       'Running total is ' + CONVERT(varchar(20),@TotalCollected)
    UPDATE CustomerDetails.CustomerProducts
	   SET LastCollected = @DateCollected
	 WHERE CURRENT OF FinProductsColl

    FETCH NEXT FROM FinProductsColl 
    INTO @FirstName, @LastName, @ProductName, @Amount, @LastCollect

END
SELECT COUNT(*)
  FROM CustomerDetails.Customers c 
  JOIN CustomerDetails.CustomerProducts cp 
    ON cp.CustomerId = c.CustomerId
  JOIN CustomerDetails.FinancialProducts f 
    ON f.ProductId = cp.FinancialProductId
 WHERE cp.Frequency = 2
   AND cp.LastCollected = @DateCollected
ROLLBACK TRAN

SELECT 'Total collected is ' + CONVERT(varchar(20),@TotalCollected)
CLOSE FinProductsColl
DEALLOCATE FinProductsColl
