CREATE TABLE warehouse.DimDate(
DateKey INT PRIMARY KEY,
FullDate DATE,
DayNo INT,
MonthNo INT,
MonthName VARCHAR(10),
QuarterNo INT,
YearNo INT);
GO

CREATE TABLE warehouse.DimProduct(
ProductID INT IDENTITY(1,1) PRIMARY KEY,
ProductName VARCHAR(50),
ProductCategory VARCHAR(20),
Brand VARCHAR(40),
PackSize VARCHAR(20));
GO

CREATE TABLE warehouse.DimWarehouse(
WarehouseID INT IDENTITY(1,1) PRIMARY KEY,
WarehouseName VARCHAR(70),
Region VARCHAR(50));
GO

CREATE TABLE warehouse.DimSupplier(
SupplierID INT IDENTITY(1,1) PRIMARY KEY,
SupplierName VARCHAR(100),
Country VARCHAR(60),
LeadTimeDays INT);
GO