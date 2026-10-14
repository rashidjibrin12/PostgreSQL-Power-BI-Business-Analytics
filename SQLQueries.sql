SELECT 
    fs.SaleID,
    dc.CustomerName,
    fs.Quantity,
    fs.TotalSales
FROM FactSales fs
JOIN DimCustomer dc 
    ON fs.CustomerID = dc.CustomerID
LIMIT 20;

SELECT 
    dp.ProductName,
    SUM(fs.TotalSales) AS TotalSales
FROM FactSales fs
JOIN DimProduct dp 
    ON fs.ProductID = dp.ProductID
GROUP BY dp.ProductName
ORDER BY TotalSales DESC;

SELECT 
    dr.Country,
    dr.City,
    SUM(fs.TotalSales) AS TotalSales
FROM FactSales fs
JOIN DimRegion dr 
    ON fs.RegionID = dr.RegionID
GROUP BY dr.Country, dr.City
ORDER BY TotalSales DESC;

SELECT 
    dd.Year,
    dd.Month,
    dd.MonthName,
    SUM(fs.TotalSales) AS MonthlySales
FROM FactSales fs
JOIN DimDate dd 
    ON fs.DateID = dd.DateID
GROUP BY dd.Year, dd.Month, dd.MonthName
ORDER BY dd.Year, dd.Month;

SELECT 
    dp.ProductName,
    SUM(fs.TotalSales) AS TotalSales,
    RANK() OVER (ORDER BY SUM(fs.TotalSales) DESC) AS SalesRank
FROM FactSales fs
JOIN DimProduct dp 
    ON fs.ProductID = dp.ProductID
GROUP BY dp.ProductName;

WITH MonthlySales AS (
    SELECT 
        dd.Year,
        dd.Month,
        SUM(fs.TotalSales) AS TotalSales
    FROM FactSales fs
    JOIN DimDate dd 
        ON fs.DateID = dd.DateID
    GROUP BY dd.Year, dd.Month
)
SELECT *
FROM MonthlySales
ORDER BY Year, Month;

SELECT 
    dp.Category,
    SUM(fs.TotalSales) AS TotalSales,
    SUM(fs.TotalProfit) AS TotalProfit,
    ROUND(SUM(fs.TotalProfit) / SUM(fs.TotalSales) * 100, 2) AS ProfitMargin
FROM FactSales fs
JOIN DimProduct dp 
    ON fs.ProductID = dp.ProductID
GROUP BY dp.Category
ORDER BY ProfitMargin DESC;

