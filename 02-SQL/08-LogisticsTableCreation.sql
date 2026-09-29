CREATE TABLE Logistics(
ShipmentID INT IDENTITY(1,1) PRIMARY KEY,
ProductID INT,
WarehouseID INT,
ShipmentDate DATE,
DeliveryDate DATE,
TransportCost DECIMAL(10,2),

FOREIGN KEY(ProductID) REFERENCES dbo.Products(ProductID),

FOREIGN KEY(WarehouseID) REFERENCES dbo.Warehouses(WarehouseID));