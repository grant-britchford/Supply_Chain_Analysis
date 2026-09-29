CREATE TABLE PurchaseOrders(
POID INT IDENTITY(1,1) PRIMARY KEY,
SupplierID INT,
OrderDate DATE,
ExpectedDate DATE,
ActualDeliveryDate DATE,
OrderValue DECIMAL(12,2),

FOREIGN KEY(SupplierID) REFERENCES dbo.Suppliers(SuppliersID));