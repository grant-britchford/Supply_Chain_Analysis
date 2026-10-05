/* revenue */
UPDATE sales.SalesOrders
SET Revenue = QuantitySold * 6.50
WHERE Revenue IS NULL;
GO

/* Duplicates */
WITH CTE AS(
SELECT *, ROW_NUMBER() OVER(PARTITION BY ProductID, OrderDate, Customer ORDER BY SalesOrderID) AS RN
FROM sales.SalesOrders)

DELETE
FROM CTE WHERE RN > 1;
GO

/* Negatives */
UPDATE inventory.Stock
SET StockQuantity = ABS(StockQuantity)
WHERE StockQuantity < 0;