UPDATE staging.InventoryRaw
SET CurrentStock = 0
WHERE CurrentStock < 0;
GO

WITH cte AS(
SELECT *, ROW_NUMBER() OVER(PARTITION BY InventoryID
ORDER BY InventoryID) rn
FROM staging.InventoryRaw)
DELETE FROM cte
WHERE rn > 1;
GO