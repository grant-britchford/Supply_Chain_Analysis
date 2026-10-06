/* missing values */
UPDATE sales.SalesOrders
SET Revenue = QuantitySold * 6.50
WHERE Revenue IS NULL;
GO

/* remove duplicates */
WITH Duplicates AS(
SELECT *, ROW_NUMBER() OVER(PARTITION BY
ProductID,
OrderDate,
Customer,
QuantitySold,
Revenue
ORDER BY SalesOrderID) AS RN
FROM sales.SalesOrders)
DELETE
FROM Duplicates WHERE RN > 1;
GO

/* negative inventory */
UPDATE inventory.Stock
SET StockQuantity = ABS(StockQuantity)
WHERE StockQuantity < 0;
GO

/* delivery date fixture */
UPDATE procurement.PurchaseOrders
SET ActualDeliveryDate = ExpectedDeliveryDate
WHERE ActualDeliveryDate > GETDATE();
GO

/* email fix */
UPDATE master_data.Suppliers
SET ContactEmail = CONCAT(
'supplier',
SupplierID,
'@supplier.com')
WHERE ContactEmail NOT LIKE '%@%';
GO