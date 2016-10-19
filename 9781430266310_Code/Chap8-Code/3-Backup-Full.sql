BACKUP DATABASE ApressFinancial
TO DISK = 'C:\APRESS_DEV1\MSSQL12.APRESS_DEV1\MSSQL\Backup\
ApressFinancialFirstFullBackup.bak'
WITH NAME = 'ApressFinancial-Full Database Backup',
SKIP,
NOUNLOAD,
STATS = 10
