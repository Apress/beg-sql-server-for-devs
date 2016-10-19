SELECT *
  FROM ShareDetails.Shares s
 WHERE NOT EXISTS (SELECT *
                     FROM TransactionDetails.Transactions t
                    WHERE t.RelatedShareId = s.ShareId)
