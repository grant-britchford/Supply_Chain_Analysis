/* DimProduct */
CREATE TABLE warehouse.DimProduct(
ProductID INT PRIMARY KEY,
ProductName VARCHAR(100),
Category VARCHAR(50),
Brand VARCHAR(50));
GO

/* DimWarehouse */
CREATE TABLE warehouse.DimWarehouse(
WarehouseID INT PRIMARY KEY,
WarehouseName VARCHAR(100),
Region VARCHAR(50));
GO

/* DimSupplier */
CREATE TABLE warehouse.DimSupplier(
SupplierID INT IDENTITY(1,1) PRIMARY KEY,
SupplierName VARCHAR(100),
Country VARCHAR(50));
GO