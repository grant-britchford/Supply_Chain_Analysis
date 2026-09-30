INSERT INTO warehouse.FactForecast
SELECT Num, (
SELECT TOP 1 DateKey
FROM warehouse.DimDate ORDER BY NEWID()),
ABS(CHECKSUM(NEWID())) % 500 + 1,
ABS(CHECKSUM(NEWID())) % 700 + 50
FROM dbo.Numbers
WHERE Num <= 15000;