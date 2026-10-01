/* SalesRaw to FactSales */
INSERT INTO warehouse.FactSales
SELECT
SalesID,
ProductID,
WarehouseID,
TRY_CONVERT(DATE, SalesDate),
Quantity,
Revenue
FROM staging.SalesRaw;
GO

/* ForecastRaw to FactForecast */
INSERT INTO warehouse.FactForecast
SELECT
ForecastID,
ProductID,
TRY_CONVERT(DATE, ForecastDate),
ForecastQty
FROM staging.ForecastRaw;
GO

/* InventoryRaw to FactInventory */
INSERT INTO warehouse.FactInventory
SELECT
InventoryID,
ProductID,
WarehouseID,
TRY_CONVERT(DATE, SnapshotDate),
CurrentStock,
SafetyStock
FROM staging.InventoryRaw;
GO