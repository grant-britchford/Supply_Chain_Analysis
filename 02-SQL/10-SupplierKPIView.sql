CREATE VIEW vw_SupplierPerformance AS
SELECT S.SuppliersID, S.SuppliersName,
AVG(DATEDIFF(DAY, PO.OrderDate, PO.ActualDeliveryDate)) AS AvgLeadTime,



SUM(CASE WHEN PO.ActualDeliveryDate <= PO.ExpectedDate
THEN 1
ELSE 0
END) * 100.0 / COUNT(*) AS OnTimeRate

FROM dbo.Suppliers S
JOIN dbo.PurchaseOrders PO ON S.SuppliersID = PO.SupplierID

GROUP BY S.SuppliersID, S.SuppliersName;
