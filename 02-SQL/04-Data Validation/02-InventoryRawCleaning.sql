UPDATE staging.InventoryRaw
SET CurrentStock = 0
WHERE CurrentStock < 0;