/* products */
DECLARE @I INT = 1;
WHILE @I <= 50
BEGIN
INSERT INTO master_data.Products(
ProductName,
ProductCategory,
UnitCost,
SellingPrice)
VALUES(
CONCAT('Beer_', @I),
CASE
WHEN @I <= 15 THEN 'IPA'
WHEN @I <= 30 THEN 'Lager'
WHEN @I <= 40 then 'Stout'
ELSE 'Pale Ale'
END,
CAST((RAND(CHECKSUM(NEWID())) * 4 + 1) AS DECIMAL(10,2)),
CAST((RAND(CHECKSUM(NEWID())) * 8 + 5) AS DECIMAL(10,2)));
SET @I = @I + 1;
END;
GO

/* suppliers */
INSERT INTO master_data.Suppliers(
SupplierName,
Country,
LeadTimeDays,
ContactEmail,
SupplierRating)
VALUES
('Hop Alliance UK','UK',7,'hop1@supplier.com',4.9),
('Northern Malt','UK',10,'malt1@supplier.com',4.7),
('Euro Malt GmbH','Germany',14,'euro@supplier.com',4.3),
('Premium Yeast','Belgium',9,'yeast@supplier.com',4.8),
('Brew Logistics','UK',5,'logistics@supplier.com',4.4),
('Hops Direct','USA',18,'hops@supplier.com',4.5),
('Malt Brothers','Germany',13,'malt2@supplier.com',4.2),
('Belgian Yeast Co','Belgium',8,'yeast2@supplier.com',4.6),
('Packaging UK','UK',5,'packaging@supplier.com',4.1),
('Can Solutions','UK',7,'cans@supplier.com',4.4),
('Barley Source','France',12,'barley@supplier.com',4.0),
('Grain Experts','France',15,'grain@supplier.com',4.1),
('Hop Global','USA',20,'hopglobal@supplier.com',4.8),
('Bottle Supply','UK',6,'bottle@supplier.com',4.5),
('Lager Ingredients','Germany',11,'lager@supplier.com',4.3),
('Craft Supply Co','UK',8,'craft@supplier.com',4.4),
('Yeast Innovations','Belgium',9,'yeast3@supplier.com',4.6),
('Raw Materials Ltd','UK',7,'raw@supplier.com',4.0),
('Supply Partners','UK',6,'partner@supplier.com',4.2),
('Ingredient Hub','Netherlands',10,'hub@supplier.com',4.7);
GO