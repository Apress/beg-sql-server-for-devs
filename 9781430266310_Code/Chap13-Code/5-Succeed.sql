BEGIN TRAN
UPDATE CustomerDetails.vw_CustTrans
   SET DateEntered = '1 Feb 2013'
 WHERE CustomerId = 1
ROLLBACK TRAN