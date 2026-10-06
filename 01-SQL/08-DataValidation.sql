SELECT COUNT(*) AS MissingRevenue
FROM sales.SalesOrders
WHERE Revenue IS NULL;
GO

SELECT
ProductID,
OrderDate,
Customer,
QuantitySold,
Revenue,
COUNT(*) AS Duplicates
FROM sales.SalesOrders
GROUP BY
ProductID,
OrderDate,
Customer,
QuantitySold,
Revenue
HAVING COUNT(*) > 1;
GO

SELECT *
FROM inventory.Stock
WHERE StockQuantity < 0;
GO

SELECT *
FROM procurement.PurchaseOrders
WHERE ActualDeliveryDate > GETDATE();

SELECT *
FROM master_data.Suppliers
WHERE ContactEmail NOT LIKE '%@%';
GO