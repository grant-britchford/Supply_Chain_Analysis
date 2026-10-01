INSERT INTO staging.SalesRaw
SELECT TOP 500 *
FROM staging.SalesRaw;