CREATE FUNCTION TransactionDetails.ReturnTransactions
(@CustId bigint) RETURNS @Trans TABLE
(TransactionId bigint,
CustomerId bigint,
TransactionDescription nvarchar(30),
DateEntered datetime,
Amount money)
AS
BEGIN
 INSERT INTO @Trans
 SELECT t.TransactionId, t.CustomerId, tt.Description,
          t.DateEntered, t.Amount
   FROM TransactionDetails.Transactions t
   JOIN TransactionDetails.TransactionTypes tt ON
           tt.TransactionTypeId = t.TransactionType
  WHERE CustomerId = @CustId
    RETURN
END
GO
