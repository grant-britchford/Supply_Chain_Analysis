CREATE TABLE #Numbers(
Num INT);

with Nbrs AS(
SELECT TOP (50000) ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) Num
FROM sys.objects a
CROSS JOIN sys.objects b)

INSERT INTO #Numbers
SELECT Num
FROM Nbrs;