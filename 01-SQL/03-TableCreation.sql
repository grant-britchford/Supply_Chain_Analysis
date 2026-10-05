/* products */
CREATE TABLE master_data.Products(
ProductID INT IDENTITY(1,1) PRIMARY KEY,
ProductName VARCHAR(50) NOT NULL,
ProductCategory VARCHAR(60) NOT NULL,
UnitCost DECIMAL(10,2) NOT NULL,
SellingPrice DECIMAL(10,2) NOT NULL);
GO

/* suppliers */
CREATE TABLE master_data.Suppliers(
SupplierID INT IDENTITY(1,1) PRIMARY KEY,
SupplierName VARCHAR(100),
Country VARCHAR(50),
LeadTimeDays INT,
ContactEmail VARCHAR(100),
SupplierRating DECIMAL(3,2));
GO

/* inventory */
CREATE TABLE inventory.Stock(
InventoryID INT IDENTITY(1,1) PRIMARY KEY,
ProductID INT NOT NULL,
Warehouse VARCHAR(50) NOT NULL,
StockQuantity INT NOT NULL,
ReOrderPoint INT NOT NULL,
StockDate DATE NOT NULL,
CONSTRAINT FK_Stock_Product
FOREIGN KEY(ProductID)
REFERENCES master_data.Products(ProductID));
GO

/* sales orders */
CREATE TABLE sales.SalesOrders(
SalesOrderID INT IDENTITY(1,1) PRIMARY KEY,
ProductID INT NOT NULL,
OrderDate DATE NOT NULL,
Customer VARCHAR(100) NOT NULL,
QuantitySold INT NOT NULL,
Revenue DECIMAL(18,2),
CONSTRAINT FK_Sales_Product
FOREIGN KEY(ProductID)
REFERENCES master_data.Products(ProductID));
GO

/* purchase orders */
CREATE TABLE procurement.PurchaseOrders(
PurchaseID INT IDENTITY(1,1) PRIMARY KEY,
SupplierID INT NOT NULL,
ProductID int not null,
QuantityOrdered INT NOT NULL,
OrderDate DATE NOT NULL,
ExpectedDeliveryDate DATE NOT NULL,
ActualDeliveryDate DATE NOT NULL,
UnitCost DECIMAL(10,2),
CONSTRAINT FK_PO_Supplier
FOREIGN KEY(SupplierID)
REFERENCES master_data.Suppliers(SupplierID),
CONSTRAINT FK_PO_Product
FOREIGN KEY(ProductID)
REFERENCES master_data.Products(ProductID));
GO