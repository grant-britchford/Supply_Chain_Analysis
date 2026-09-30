DECLARE @Date DATE = '2023-01-01';

WHILE @Date <= '2025-12-31'
BEGIN

INSERT INTO warehouse.DimDate
VALUES(
CONVERT(INT, FORMAT(@Date,'yyyyMMdd')),
@Date,
DAY(@Date),
MONTH(@Date),
DATENAME(MONTH, @Date),
DATEPART(QUARTER, @Date),
YEAR(@DATE));

SET @Date = DATEADD(DAY, 1, @Date);

END;