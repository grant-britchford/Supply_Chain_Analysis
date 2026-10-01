/* SalesRaw */
CREATE TABLE staging.SalesRaw(
SalesID BIGINT,
ProductID INT,
WarehouseID INT,
SalesDate VARCHAR(30),
Quantity INT,
Revenue DECIMAL(18,2));
GO

/* InventoryRaw */
CREATE TABLE staging.InventoryRaw(
InventoryID BIGINT,
ProductID INT,
WarehouseID INT,
SnapshotDate VARCHAR(30),
CurrentStock INT,
SafetyStock INT);
GO

/* ForecastRaw */
CREATE TABLE staging.ForecastRaw(
ForecastID BIGINT,
ProductID INT,
ForecastDate VARCHAR(30),
ForecastQty INT);
GO

/* SupplierDeliveryRaw */
CREATE TABLE staging.SupplierDeliveryRaw(
DeliveryID BIGINT,
SupplierName VARCHAR(100),
ProductID INT,
ExpectedDate VARCHAR(30),
ActualDate VARCHAR(30),
Quantity INT);
GO