CREATE TABLE Suppliers(
SuppliersID INT IDENTITY(1,1) PRIMARY KEY,
SuppliersName VARCHAR(60),
Category VARCHAR(40),
LeadTimeDays INT,
ReliabilityScore DECIMAL(5,2),
Country VARCHAR(50));