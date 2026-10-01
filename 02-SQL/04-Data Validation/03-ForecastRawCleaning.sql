UPDATE staging.ForecastRaw
SET ForecastQty = (SELECT AVG(ForecastQty)
FROM staging.ForecastRaw
WHERE ForecastQty IS NOT NULL)
WHERE ForecastQty IS NULL;
GO

WITH cte AS(
SELECT *, ROW_NUMBER() OVER(PARTITION BY ForecastID ORDER BY ForecastID) rn
FROM staging.ForecastRaw)
DELETE FROM cte
WHERE rn > 1;
GO