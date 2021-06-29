-- Cleaning Fact Internet Sales Table
SELECT ProductKey,
       OrderDateKey,
	   DueDateKey,
	   ShipDateKey,
	   CustomerKey,
	   SalesOrderNumber,
	   SalesAmount
FROM AdventureWorksDW2019..FactInternetSales
WHERE LEFT(OrderDateKey, 4) >= YEAR(GETDATE()) -2 -- Ensures we get only 2 years of data extracted
ORDER BY OrderDateKey