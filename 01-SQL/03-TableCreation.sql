/* Supplier table */
CREATE TABLE master_data.Suppliers(
SupplierID INT IDENTITY(1,1),
SupplierName VARCHAR(100),
Country VARCHAR(60),
LeadTimeDays INT,
ContactEmail VARCHAR(100),
SupplierRating DECIMAL(3,2));
GO

/* Product table */
CREATE TABLE master_data.Products(
ProductID INT IDENTITY(1,1),
ProductName varchar(50),
ProductCategory VARCHAR(50),
UnitCost DECIMAL(10,2),
SellingPrice DECIMAL(10,2));
GO

/* Inventory table */
CREATE TABLE inventory.Stock(
InventoryID INT IDENTITY(1,1),
ProductID INT,
Warehouse VARCHAR(50),
StockQuantity INT,
ReOrderPoint INT,
StaockDate DATE);
GO

/* PurchaseOrder table */
CREATE TABLE procurement.PurchaseOrders(
PurchaseOrderID INT IDENTITY(1,1),
SupplierID INT,
ProductID INT,
QuantityOrdered INT,
OrderDate DATE,
ExpectedDeliveryDate DATE,
ActualDeliveryDate DATE,
UnitCost DECIMAL(10,2));
GO

/* SalesOrders table */
CREATE TABLE sales.SalesOrders(
SalesOrderID INT IDENTITY(1,1),
ProductID INT,
OrderDate DATE,
Customer VARCHAR(100),
QuantitySold INT,
Revenue DECIMAL(18,2));
GO