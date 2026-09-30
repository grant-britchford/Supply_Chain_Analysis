CREATE TABLE warehouse.FactSales(
SalesID BIGINT PRIMARY KEY,
DateKey INT,
ProductID INT,
WarehouseID INT,
Quantity INT,
Revenue DECIMAL(18,2));
GO

CREATE TABLE warehouse.FactForecast(
ForecastID BIGINT PRIMARY KEY,
DateKey INT,
ProductID INT,
ForecastQty INT);
GO

CREATE TABLE warehouse.FactInventory(
InventoryID BIGINT PRIMARY KEY,
DateKey INT,
ProductID INT,
WarehouseID INT,
CurrentStock INT,
SafetyStock INT);
GO

CREATE TABLE warehouse.FactSupplierDelivery(
DeliveryID BIGINT PRIMARY KEY,
SupplierID INT,
ProductID INT,
ExpectedDate DATE,
ActualDate DATE,
QuantityDelivered INT);
GO