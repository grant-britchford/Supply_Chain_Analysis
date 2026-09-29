INSERT INTO dbo.Inventory(
ProductID,
WarehouseID,
StockQuantity,
ReOrderLevel)
SELECT
P.ProductID,
W.WarehouseID,
ABS(CHECKSUM(NEWID())) % 7000 + 700,
ABS(CHECKSUM(NEWID())) % 2000 + 200
FROM dbo.Products P
CROSS JOIN dbo.Warehouses W;