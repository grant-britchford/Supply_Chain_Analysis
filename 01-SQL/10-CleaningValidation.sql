SELECT COUNT(*) AS MissingRevenue
FROM sales.SalesOrders
WHERE Revenue IS NULL;
GO

SELECT COUNT(*) AS NegativeInventory
FROM inventory.Stock
WHERE StockQuantity < 0;
GO

SELECT COUNT(*) AS FutureDeliveries
FROM procurement.PurchaseOrders
WHERE ActualDeliveryDate > GETDATE();
GO

SELECT COUNT(*) AS InvalidEmails
FROM master_data.Suppliers
WHERE ContactEmail NOT LIKE '%@%';
GO