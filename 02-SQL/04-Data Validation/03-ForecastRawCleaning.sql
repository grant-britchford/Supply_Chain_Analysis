UPDATE staging.ForecastRaw
SET ForecastQty = (SELECT AVG(ForecastQty)
FROM staging.ForecastRaw
WHERE ForecastQty IS NOT NULL)
WHERE ForecastQty IS NULL;