BEGIN TRAN
UPDATE CustomerDetails.vw_CustTrans
   SET DateEntered = '1 Dec 1900'
 WHERE CustomerId = 1
ROLLBACK TRAN


