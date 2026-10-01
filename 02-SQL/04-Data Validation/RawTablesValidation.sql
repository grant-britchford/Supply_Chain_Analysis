/* SalesRaw Duplicates */
SELECT COUNT(*) AS DuplicateSales
FROM(
SELECT SalesID FROM staging.SalesRaw
GROUP BY SalesID