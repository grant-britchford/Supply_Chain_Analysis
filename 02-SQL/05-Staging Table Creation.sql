SELECT *
INTO staging.SalesRaw
FROM warehouse.FactSales
WHERE 1 = 0;
GO

SELECT *
INTO staging.ForecastRaw
FROM warehouse.FactForecast
WHERE 1 = 0;
GO

SELECT * 
INTO staging.InventoryRaw
FROM warehouse.FactInventory
WHERE 1 = 0;
GO

SELECT *
INTO staging.SupplerDeliveryRaw
FROM warehouse.FactSupplierDelivery
WHERE 1 = 0;
GO