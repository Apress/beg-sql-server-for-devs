USE ApressFinancial
GO
DELETE FROM CustomerDetails.Customers
DBCC CHECKIDENT('CustomerDetails.Customers',RESEED,0)
INSERT INTO CustomerDetails.Customers
(Title,LastName,FirstName,
OtherInitials,AddressLine1,TownOrCity,USState,ZipCode,
AccountType,ClearedBalance,UnclearedBalance)
VALUES (1,'Morgala','Noel',NULL,'87 Winnie Way',4,8,112,0,NULL,NULL)
INSERT INTO CustomerDetails.Customers
(Title,LastName,FirstName,
OtherInitials,AddressLine1,TownOrCity,USState,ZipCode,
AccountType,ClearedBalance,UnclearedBalance)
VALUES (2,'Lomas','Aubrey',NULL,'11c Clerkenwell',2654,0,0,2,437.97,-10.56)
