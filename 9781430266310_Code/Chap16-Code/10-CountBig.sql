SELECT COUNT_BIG(*) AS 'Number of Rows'
FROM CustomerDetails.Customers
WHERE UnclearedBalance IS NULL
