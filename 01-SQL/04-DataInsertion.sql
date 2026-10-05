/*PurchaseOrders */
DECLARE @Counter INT = 1;
WHILE @Counter <= 5000
BEGIN
INSERT INTO procurement.PurchaseOrders(
SupplierID,
ProductID,
QuantityOrdered,
OrderDate,
ExpectedDeliveryDate,
ActualDeliveryDate,
UnitCost)
VALUES(
ABS(CHECKSUM(NEWID())) % 52 + 1,
ABS(CHECKSUM(NEWID())) % 200 + 1,
ABS(CHECKSUM(NEWID())) % 1000 + 50,
DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 730, GETDATE()),
DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 14 + 5, GETDATE()),
DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 18 + 5, GETDATE()),
ROUND(RAND(CHECKSUM(NEWID())) * 10 + 1, 2));
SET @Counter = @Counter + 1;
END;
GO

/* stock */
DECLARE @ProductID INT = 1;

WHILE @ProductID <= 50
BEGIN

INSERT INTO inventory.Stock(
ProductID,
Warehouse,
StockQuantity,
ReOrderPoint,
StockDate)
VALUES(
@ProductID,
'Leeds Warehouse',
ABS(CHECKSUM(NEWID())) % 1000 + 50,
ABS(CHECKSUM(NEWID())) % 200 + 20,
GETDATE());

SET @ProductID = @ProductID + 1;
END;
GO

/* Products */
DECLARE @i INT = 1;

WHILE @i <= 50
BEGIN

INSERT INTO master_data.Products(
ProductName,
ProductCategory,
UnitCost,
SellingPrice)
VALUES(
CONCAT('Beer_', @i),
CASE
WHEN @i <= 15 THEN 'IPA'
WHEN @i <= 30 THEN 'Lager'
WHEN @i <= 40 THEN 'Stout'
ELSE 'Pale Ale'
END,
ROUND(RAND(CHECKSUM(NEWID())) * 5 + 1, 2),
ROUND(RAND(CHECKSUM(NEWID())) * 10 + 5, 2));

SET @i += 1;

END
GO

/* suppliers */
INSERT INTO master_data.Suppliers
VALUES
('Hop Alliance UK', 'UK', 7, 'contact@hopalliance.co.uk', 4.8),
('Malt Masters', 'Germany', 14, 'info@maltmasters.de', 4.5),
('Brew Logitics', 'UK', 5, 'support@brewlogistics.com', 4.2),
('Yeast Solutions', 'Belgium', 10, 'sales@yeastsolutions.be', 4.7);
GO

/* orders */
SET NOCOUNT ON;
GO

DECLARE @Counter INT = 1;

WHILE @Counter <= 10000
BEGIN

INSERT INTO sales.SalesOrders(
ProductID,
OrderDate,
Customer,
QuantitySold,
Revenue)
VALUES(
ABS(CHECKSUM(NEWID())) % 50 + 1,
DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 730, CAST(GETDATE() AS DATE)),
CONCAT('Customer_', ABS(CHECKSUM(NEWID())) % 500 + 1),
ABS(CHECKSUM(NEWID())) % 100 + 1,
ROUND((ABS(CHECKSUM(NEWID())) % 100 + 1) * 6.50, 2)
);

SET @Counter += 1;

END;
GO

/* Nulls */
UPDATE sales.SalesOrders
SET Revenue = NULL
WHERE SalesOrderID % 50 = 0;
GO

/* Duplicates */
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
FROM sales.SalesOrders;
GO

/* Negatives */
UPDATE inventory.Stock
SET StockQuantity = -25
WHERE InventoryID IN (5, 20, 50);
GO

/* Dates */
UPDATE procurement.PurchaseOrders
SET ActualDeliveryDate = DATEADD(YEAR, 2, ActualDeliveryDate)
WHERE PurchaseOrderID % 25 = 0;
GO