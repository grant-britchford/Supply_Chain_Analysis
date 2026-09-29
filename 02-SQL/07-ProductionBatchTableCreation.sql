CREATE TABLE ProductionBatches(
BatchID INT IDENTITY(1,1) PRIMARY KEY,
ProductID INT,
BrewDate DATE,
QuantityProduced INT,
QuantityExpected INT,

FOREIGN KEY(ProductID) REFERENCES dbo.Products(ProductID));