CREATE VIEW reports.vwSalesPerformance
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

CREATE VIEW reports.vwInventoryStatus
AS
SELECT
s.InventoryID,
p.ProductID,
p.ProductName,
p.ProductCategory,
s.Warehouse,
s.StockQuantity,
s.ReOrderPoint,
CASE
WHEN s.StockQuantity < s.ReOrderPoint
THEN 'ReOrder Required'
ELSE 'Healthy'
END AS StockStatus
FROM inventory.Stock s
INNER JOIN master_data.Products p ON s.ProductID = p.ProductID;
GO

CREATE VIEW reports.OTIF
AS
SELECT
po.PurchaseID,
po.SupplierID,
sup.SupplierName,
po.ExpectedDeliveryDate,
po.ActualDeliveryDate,
CASE
WHEN po.ActualDeliveryDate <= po.ExpectedDeliveryDate
THEN 1
ELSE 0
END AS OnTimeFlag
FROM procurement.PurchaseOrders po
INNER JOIN master_data.Suppliers sup ON po.SupplierID = sup.SupplierID;
GO

CREATE VIEW reports.vwSupplierPerformance
AS
SELECT
sup.SupplierID,
sup.SupplierName,
COUNT(*) AS TotalOrders,
AVG(DATEDIFF(DAY, po.OrderDate, po.ActualDeliveryDate)) AS AvgLeadTimeDays
FROM procurement.PurchaseOrders po
INNER JOIN master_data.Suppliers sup ON po.SupplierID = sup.SupplierID
GROUP BY
sup.SupplierID,
sup.SupplierName;
GO

CREATE VIEW reports.vwProductProfitability
AS
SELECT
p.ProductID,
p.ProductName,
p.ProductCategory,
SUM(s.QuantitySold) AS UnitsSold,
SUM(s.Revenue) AS Revenue,
SUM(s.QuantitySold * p.UnitCost) AS Cost,
SUM(s.Revenue) - SUM(s.QuantitySold * p.UnitCost) AS Profit
FROM sales.SalesOrders s
INNER JOIN master_data.Products p ON s.ProductID = p.ProductID
GROUP BY
p.ProductID,
p.ProductName,
p.ProductCategory;
GO