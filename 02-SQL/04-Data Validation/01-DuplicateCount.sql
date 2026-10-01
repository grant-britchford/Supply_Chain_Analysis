SELECT ProductID, COUNT(*) AS DuplicateCount
FROM staging.SalesRaw
GROUP BY ProductID
HAVING COUNT(*) > 1;
GO

SELECT InventoryID, COUNT(*) AS DuplicateCount
FROM staging.InventoryRaw
GROUP BY InventoryID
HAVING COUNT(*) > 1;
GO

SELECT ForecastID, COUNT(*) AS DuplicateCount
FROM staging.ForecastRaw
GROUP BY ForecastID
HAVING COUNT(*) > 1;
GO   

SELECT DeliveryID, COUNT(*) AS DuplicateCount
FROM staging.SupplierDeliveryRaw
GROUP BY DeliveryID
HAVING COUNT(*) > 1;
GO