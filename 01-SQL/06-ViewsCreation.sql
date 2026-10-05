
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

/* otif */
CREATE VIEW reporting.vwOTIF
AS
SELECT
po.PurchaseOrderID,
sup.SupplierName,
po.ActualDeliveryDate,
CASE
WHEN po.ActualDeliveryDate <= po.ExpectedDeliveryDate
THEN 1
ELSE 0
END AS OnTimeFlag
FROM procurement.PurchaseOrders po
INNER JOIN master_data.Suppliers sup ON po.SupplierID = sup.SupplierID;
GO

/* sales performance */
CREATE VIEW reporting.vwSalesPerformance
AS
SELECT
SalesOrderID,
ProductID,
OrderDate,
Customer,
QuantitySold,
Revenue
FROM sales.SalesOrders;
GO

/* product profitability */
CREATE VIEW reporting.vwProductProfitability
AS
SELECT
p.ProductName,
SUM(s.QuantitySold) AS UnitsSold,
SUM(s.Revenue) AS Revenue,
SUM(s.QuantitySold * p.UnitCost) AS Cost,
SUM(s.QuantitySold * p.UnitCost) AS Profit
FROM sales.SalesOrders s
INNER JOIN master_data.Products p ON s.ProductID = p.ProductID
GROUP BY p.ProductName;
GO


/* sales performance */
CREATE VIEW reporting.vwSalesPerformance
AS
SELECT
SalesOrderID,
ProductID,
OrderDate,
Customer,
QuantitySold,
Revenue
FROM sales.SalesOrders;
GO