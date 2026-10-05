/* inventory */
CREATE VIEW reporting.vwInventoryStatus
AS

SELECT

p.ProductName,
s.StockQuantity,
s.ReOrderPoint,
CASE
WHEN StockQuantity < ReOrderPoint
THEN 'ReOrder Required'
ELSE 'Healthy'
END AS StockStatus

FROM inventory.Stock s

JOIN master_data.Products p ON p.ProductID = s.ProductID;
GO

/* supplier performance */
CREATE VIEW reporting.vwSuppliersPerformance AS

SELECT

sup.SupplierName, COUNT(*) AS Orders,

AVG(DATEDIFF(DAY, OrderDate, ActualDeliveryDate)) AvgLeadTime

FROM procurement.PurchaseOrders po

JOIN master_data.Suppliers sup ON po.SupplierID = sup.SupplierID

GROUP BY sup.SupplierName;
GO