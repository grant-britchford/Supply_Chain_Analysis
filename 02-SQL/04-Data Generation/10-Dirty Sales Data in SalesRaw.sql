INSERT INTO staging.SalesRaw
SELECT *
FROM warehouse.FactSales;
GO

INSERT INTO staging.SalesRaw
SELECT TOP 100 *
FROM staging.SalesRaw;
GO