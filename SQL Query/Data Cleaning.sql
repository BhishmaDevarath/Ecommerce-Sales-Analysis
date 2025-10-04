SELECT TOP 10 * FROM SalesData;

SELECT COUNT(*) AS TotalRows FROM SalesData;

SELECT COUNT(*) AS MissingSalesAmount
FROM SalesData
WHERE Amount IS NULL;

--Basic Sanity Check
-- Check total rows
SELECT COUNT(*) AS TotalRows FROM SalesData;

-- Check for nulls in key fields
SELECT
    SUM(CASE WHEN OrderID IS NULL THEN 1 ELSE 0 END) AS NullOrderID,
    SUM(CASE WHEN Dates IS NULL THEN 1 ELSE 0 END) AS NullDates,
    SUM(CASE WHEN Amount IS NULL THEN 1 ELSE 0 END) AS NullAmount
FROM SalesData;

-- Check unique Order IDs
SELECT COUNT(DISTINCT OrderID) AS UniqueOrders, COUNT(*) AS TotalRows
FROM SalesData;

--Data Transformation
--Total Sales, Orders, Quantity
SELECT 
    SUM(Amount) AS TotalSales,
    COUNT(DISTINCT OrderID) AS TotalOrders,
    SUM(Quantity) AS TotalQuantity
FROM SalesData;

--Sales by State
SELECT 
    ShipState,
    ROUND(SUM(Amount), 2) AS TotalSales,
    COUNT(DISTINCT OrderID) AS TotalOrders
FROM SalesData
GROUP BY ShipState
ORDER BY TotalSales DESC;

--Monthly Sales Trend
SELECT 
    YEAR(Dates) AS Year,
    MONTH(Dates) AS Month,
    ROUND(SUM(Amount), 2) AS TotalSales
FROM SalesData
GROUP BY YEAR(Dates), MONTH(Dates)
ORDER BY Year, Month;

--Top 10 Selling Categories
SELECT TOP 10
    Category,
    ROUND(SUM(Amount), 2) AS TotalSales,
    SUM(Quantity) AS TotalQuantity
FROM SalesData
GROUP BY Category
ORDER BY TotalSales DESC;

--Sales by Fulfilment Type
SELECT 
    Fulfilment,
    ROUND(SUM(Amount), 2) AS TotalSales,
    COUNT(*) AS OrderCount
FROM SalesData
GROUP BY Fulfilment
ORDER BY TotalSales DESC;

--Sales by Courier Status
SELECT 
    CourierStatus,
    ROUND(SUM(Amount), 2) AS TotalSales,
    COUNT(*) AS Orders
FROM SalesData
GROUP BY CourierStatus
ORDER BY TotalSales DESC;

--Average Order Value (AOV)
SELECT 
    ROUND(SUM(Amount) / COUNT(DISTINCT OrderID), 2) AS AvgOrderValue
FROM SalesData;