/* inventory */
INSERT INTO inventory.Stock(
ProductID,
Warehouse,
StockQuantity,
ReOrderPoint,
StockDate)
SELECT
ProductID,
'Leeds Warehouse',
ABS(CHECKSUM(NEWID())) % 1000 + 50,
ABS(CHECKSUM(NEWID())) % 200 + 50,
GETDATE()
FROM master_data.Products;

INSERT INTO inventory.Stock(
ProductID,
Warehouse,
StockQuantity,
ReOrderPoint,
StockDate)
SELECT
ProductID,
'London Warehouse',
ABS(CHECKSUM(NEWID())) % 1000 + 50,
ABS(CHECKSUM(NEWID())) % 200 +50,
GETDATE()
FROM master_data.Products;

INSERT INTO inventory.Stock(
ProductID,
Warehouse,
StockQuantity,
ReOrderPoint,
StockDate)
SELECT
ProductID,
'Manchester Warehouse',
ABS(CHECKSUM(NEWID())) % 1000 + 50,
ABS(CHECKSUM(NEWID())) % 200 +50,
GETDATE()
FROM master_data.Products;