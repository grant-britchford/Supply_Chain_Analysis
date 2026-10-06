/* missing values */
UPDATE sales.SalesOrders
SET Revenue = NULL
WHERE SalesOrderID % 50 = 0;
GO

/* duplicates */
INSERT INTO sales.SalesOrders(
ProductID,
OrderDate,
Customer,
QuantitySold,
Revenue)
SELECT TOP 100
ProductID,
OrderDate,
Customer,
QuantitySold,
Revenue
FROM sales.SalesOrders
ORDER BY NEWID();
GO

/* negatives */
UPDATE inventory.Stock
SET StockQuantity = -25
WHERE InventoryID IN (5, 25, 50);
GO

/* delivery dates */
UPDATE procurement.PurchaseOrders
SET ActualDeliveryDate = DATEADD(YEAR, 2, ActualDeliveryDate)
WHERE PurchaseID % 100 = 0;
GO

/* supplier email invalidation */
UPDATE master_data.Suppliers
SET ContactEmail = 'INVALID_EMAIL'
WHERE SupplierID IN (2, 5, 7);
GO