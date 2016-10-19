INSERT INTO TransactionDetails.Transactions_old
(CustomerId,TransactionType,DateEntered,Amount,RelatedProductId)
 VALUES (1,1,'1 Aug 2015',100.00,1),
 (1,1,'3 Aug 2015',75.67,1),
 (1,2,'5 Aug 2015',35.20,1),
 (1,2,'6 Aug 2015',20.00,1)
EXEC  CustomerDetails.apf_CustMovement 1,'1 Aug 2015','31 Aug 2015'
