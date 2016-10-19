SELECT t1.TransactionId, t1.DateEntered,t1.Amount,
TransactionDetails.fn_IntCalc(3,t1.Amount,t1.DateEntered,
(SELECT MIN(DateEntered)
FROM TransactionDetails.Transactions t2
WHERE t2.CustomerId = t1.CustomerId
AND t2.DateEntered> t1.DateEntered)) AS 'Interest Earned'
FROM TransactionDetails.Transactions t1
WHERE CustomerId = 1
