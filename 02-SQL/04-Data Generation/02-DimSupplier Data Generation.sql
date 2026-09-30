INSERT INTO warehouse.DimSupplier(
SupplierName,
Country,
LeadTimeDays)
SELECT 'Supplier ' + CAST(Num AS VARCHAR), 'United Kingdom',
ABS(CHECKSUM(NEWID())) % 20 + 1
FROM dbo.Numbers
WHERE Num <= 100;