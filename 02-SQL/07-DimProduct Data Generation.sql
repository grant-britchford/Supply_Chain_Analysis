INSERT INTO warehouse.DimProduct(
ProductName,
ProductCategory,
Brand,
PackSize)
SELECT 'Beer Product ' + CAST(Num AS VARCHAR),
CASE
WHEN Num % 5 = 0 THEN 'IPA'
WHEN Num % 5 = 1 THEN 'Lager'
WHEN Num % 5 = 2 THEN 'Stout'
WHEN Num % 5 = 3 THEN 'Pale Ale'
ELSE 'Session'
END,
'Beavertowwn', '440ml'
FROM dbo.Numbers
WHERE Num <= 500;