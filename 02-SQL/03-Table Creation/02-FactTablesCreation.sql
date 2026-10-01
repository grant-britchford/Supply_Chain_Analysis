/* FactSales */
CREATE TABLE warehouse.FactSales(
SalesID BIGINT PRIMARY KEY,
ProductID INT,
WarehouseID INT,
SalesDate DATE,
Quantity INT,
Revenue DECIMAL(18,2));
GO

/* FactInventory */
CREATE TABLE warehouse.FactInventory(
InventoryID BIGINT PRIMARY KEY,
ProductID INT,
WarehouseID INT,
SnapshotDate DATE,
CurrentStock INT,
SafetyStock INT);

/* FactForecast */
CREATE TABLE warehouse.FactForecast(
ForecastID BIGINT PRIMARY KEY,
ProductID INT,
ForecastDate DATE,
ForecastQty INT);
GO

/* FactSupplierDelivery */
CREATE TABLE warehouse.FactSupplierDelivery(
DeliveryID BIGINT PRIMARY KEY,
SupplierID INT,
ProductID INT,
ExpectedDate DATE,
ActualDate DATE,
QuantityDelivered INT);
GO