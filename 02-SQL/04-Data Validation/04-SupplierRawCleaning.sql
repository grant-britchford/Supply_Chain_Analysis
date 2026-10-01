UPDATE staging.SupplierDeliveryRaw
SET SupplierName = 'CARLSBERG UK'
WHERE SupplierName IN(
'Carlsberg UK',
'CARLSBERGUK',
'Carlsberg UK Ltd');
GO

WITH cte AS(
SELECT *, ROW_NUMBER() OVER (PARTITION BY DeliveryID ORDER BY DeliveryID) rn
FROM staging.SupplierDeliveryRaw)
DELETE FROM cte
WHERE rn > 1;