CREATE TABLE Inventory(
InventoryID INT IDENTITY(1,1) PRIMARY KEY,
ProductID INT,
WarehouseID INT,
StockQuantity INT,
ReOrderLevel INT,

FOREIGN KEY(ProductID) REFERENCES dbo.Products(ProductID),

FOREIGN KEY(WarehouseID) REFERENCES dbo.Warehouses(WarehouseID));