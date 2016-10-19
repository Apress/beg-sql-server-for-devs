CREATE PROCEDURE dbo.apf_InsertDataSpeedTest2 
  WITH NATIVE_COMPILATION, SCHEMABINDING, EXECUTE AS OWNER
  AS 
  BEGIN ATOMIC 
  WITH (TRANSACTION ISOLATION LEVEL = SNAPSHOT, LANGUAGE = N'us_english')
  SELECT GETDATE()

  DECLARE @i INT = 1;

  WHILE @i <= 100000
  BEGIN;
	  INSERT INTO TransactionDetails.Transactions_SCHEMAONLY
	  (CustomerId, TransactionType, DateEntered, Amount,
		 RelatedProductId)
	  VALUES (1,1,GETDATE(),100,1);
	  SET @i += 1;
  END;
  SELECT GETDATE()
END

