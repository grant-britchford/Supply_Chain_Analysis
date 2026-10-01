UPDATE staging.SupplierDeliveryRaw
SET SupplierName = 'CARLSBERG UK'
WHERE SupplierName IN(
'Carlsberg UK',
'CARLSBERGUK',
'Carlsberg UK Ltd');