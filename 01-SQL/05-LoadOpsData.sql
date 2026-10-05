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

/* purchase orders */
SET NOCOUNT ON;
GO
DECLARE @Counter INT = 1;
WHILE @Counter <= 5000
BEGIN
INSERT INTO procurement.PurchaseOrders(
SupplierID,
ProductID,
QuantityOrdered,
OrderDate,
ExpectedDeliveryDate,
ActuaLDeliveryDate,
UnitCost)
VALUES(
ABS(CHECKSUM(NEWID())) % 20 + 1,
ABS(CHECKSUM(NEWID())) % 50 + 1,
ABS(CHECKSUM(NEWID())) % 1000 + 100,
DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 730, GETDATE()),
DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 14 + 5, GETDATE()),
DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 18 + 5, GETDATE()),
CAST((RAND(CHECKSUM(NEWID())) * 10 + 1) AS DECIMAL(10,2)));
SET @Counter = @Counter + 1;
END;
GO

/* sales orders */
SET NOCOUNT ON;
GO
DECLARE @SalesCounter INT = 1;
WHILE @SalesCounter <= 10000
BEGIN
INSERT INTO sales.SalesOrders(
ProductID,
OrderDate,
Customer,
QuantitySold,
Revenue)
VALUES(
ABS(CHECKSUM(NEWID())) % 50 + 1,
DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 730, GETDATE()),
CONCAT('Customer_', ABS(CHECKSUM(NEWID())) % 500 + 1),
ABS(CHECKSUM(NEWID())) % 100 + 1,
ROUND((ABS(CHECKSUM(NEWID())) % 100 + 1) * 6.50, 2));
SET @SalesCounter = @SalesCounter + 1;
END;
GO