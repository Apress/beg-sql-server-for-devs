SELECT ClearedBalance
  FROM CustomerDetails.Customers
 WHERE customerId=2

INSERT INTO TransactionDetails.Transactions_old (CustomerId,TransactionType,
Amount,RelatedProductId, DateEntered)
VALUES (2,4,200,1,GETDATE())

SELECT ClearedBalance
  FROM CustomerDetails.Customers
 WHERE customerId=2
