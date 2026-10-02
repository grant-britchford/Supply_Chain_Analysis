/* SalesRaw */
INSERT INTO staging.SalesRaw
SELECT Num,
ABS(CHECKSUM(NEWID())) % 500 + 1,
ABS(CHECKSUM(NEWID())) % 5 + 1,
CASE
WHEN Num % 20 = 0 THEN '01/01/2025'
WHEN Num % 15 = 0 THEN '31/12/2025'
ELSE '01/01/2025'
END,
ABS(CHECKSUM(NEWID())) % 200,
ABS(CHECKSUM(NEWID())) % 5000
FROM dbo.Numbers
WHERE Num <= 35000;
GO

/* ForecastRaw */
INSERT INTO staging.ForecastRaw
SELECT Num,
ABS(CHECKSUM(NEWID())) % 5000 + 1,
'01/01/2025',
CASE 
WHEN Num % 500 = 0
THEN NULL
ELSE ABS(CHECKSUM(NEWID())) % 600 
END
FROM dbo.Numbers
WHERE Num <= 15000;
GO

/* InventoryRaw */
INSERT INTO staging.InventoryRaw
SELECT Num,
ABS(CHECKSUM(NEWID())) % 5 + 1,
ABS(CHECKSUM(NEWID())) % 5 + 1,
'01/01/2025',
CASE
WHEN Num % 1000 = 0
THEN -50
ELSE ABS(CHECKSUM(NEWID())) % 5000
END,
5000
FROM dbo.Numbers
WHERE Num <= 20000;
GO

/* SupplierDeliveryRaw */
INSERT INTO staging.SupplierDeliveryRaw
SELECT Num,
CASE
WHEN Num % 4 = 0 THEN 'CARLSBERG UK'
WHEN Num % 4 = 1 THEN 'Carlsberg UK'
WHEN Num % 4 = 2 THEN 'Carlsberg UK Ltd'
ELSE 'carlsberguk'
END,
ABS(CHECKSUM(NEWID())) % 500 + 1,
'01/01/2025',
'01/04/2025',
100
FROM dbo.numbers
WHERE Num <= 15000;
GO