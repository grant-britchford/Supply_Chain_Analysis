/* Inventory Turnover */
SELECT 
SUM(SellingPrice * StockQuantity) AS InventoryValue
FROM dbo.Inventory I
JOIN dbo.Products P
ON I.ProductID = P.ProductID;
GO

/* Avg Supplier Lead Time */
SELECT 
SuppliersName, AVG(DATEDIFF(DAY, OrderDate, ActualDeliveryDate)) AS AvgLeadTime
FROM dbo.PurchaseOrders PO
JOIN dbo.Suppliers S ON PO.SupplierID = S.SuppliersID
GROUP BY SuppliersName;
GO

/* Supplier Performance */
SELECT SuppliersName, COUNT(*) AS Orders,
SUM(CASE WHEN ActualDeliveryDate <= ExpectedDate
THEN 1
ELSE 0
END) *100.0/COUNT(*) AS OnTimeRate
FROM dbo.PurchaseOrders PO
JOIN dbo.Suppliers S ON PO.SupplierID = S.SuppliersID
GROUP BY SuppliersName;
GO

/* Production Yield */
SELECT BatchID, QuantityProduced, QuantityExpected,
ROUND(QuantityProduced * 100.0 / QuantityExpected, 2) AS YieldPercent
FROM dbo.ProductionBatches;
GO