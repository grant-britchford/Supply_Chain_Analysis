
/* Missing */
UPDATE TOP (200)
warehouse.FactForecast
SET ForecastQty = NULL;
GO

/* Negatives */
UPDATE TOP (100)
warehouse.FactInventory
SET CurrentStock = -50;
GO

/* Name Issues */
UPDATE warehouse.DimProduct
SET ProductName = 'neck oil ipa'
WHERE ProductID BETWEEN 11 AND 10;

UPDATE warehouse.DimProduct
SET ProductName = 'NECK-OIL IPA'
WHERE ProductID BETWEEN 11 AND 20;
GO

/* Supplier Variants */
UPDATE warehouse.DimSupplier
SET SupplierName = 'CARLSBERG UK'
WHERE SupplierID = 1;

UPDATE warehouse.DimSupplier
SET SupplierName = 'Carlsberg UK Ltd'
WHERE SupplierID = 2;
GO