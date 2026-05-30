-- DecodeLabs | Data Analytics Project 3
-- Dataset: Orders (e-commerce transactions)
-- Goal: basic SQL analysis to extract insights


-- ======================
-- 1) Quick look at data
-- ======================

SELECT *
FROM Orders;

SELECT COUNT(*) AS TotalOrders
FROM Orders;

-- overall summary
SELECT 
    COUNT(*) AS TotalOrders,
    ROUND(SUM(TotalPrice), 2) AS TotalRevenue,
    ROUND(AVG(TotalPrice), 2) AS AvgOrderValue,
    ROUND(MIN(TotalPrice), 2) AS MinOrderValue,
    ROUND(MAX(TotalPrice), 2) AS MaxOrderValue
FROM Orders;


-- ======================
-- 2) Filtering data
-- ======================

-- delivered orders
SELECT OrderID, CustomerID, Product, Quantity, TotalPrice
FROM Orders
WHERE OrderStatus = 'Delivered'
ORDER BY TotalPrice DESC;

-- high value orders
SELECT OrderID, CustomerID, Product, Quantity, TotalPrice
FROM Orders
WHERE TotalPrice > 3000
ORDER BY TotalPrice DESC;

-- delivered + credit card
SELECT OrderID, CustomerID, Product, PaymentMethod, TotalPrice
FROM Orders
WHERE OrderStatus = 'Delivered'
  AND PaymentMethod = 'Credit Card'
ORDER BY TotalPrice DESC;

-- orders with coupon used
SELECT OrderID, CustomerID, Product, CouponCode, TotalPrice
FROM Orders
WHERE CouponCode LIKE 'SAVE%'
   OR CouponCode LIKE 'FREE%'
   OR CouponCode LIKE 'WINTER%'
ORDER BY CouponCode, TotalPrice DESC;

-- orders from 2024
SELECT OrderID, Date, Product, TotalPrice
FROM Orders
WHERE Date LIKE '2024%'
ORDER BY Date;


-- ======================
-- 3) Sorting
-- ======================

SELECT OrderID, Product, CustomerID, Quantity, TotalPrice
FROM Orders
ORDER BY TotalPrice DESC;

SELECT OrderID, Product, CustomerID, Quantity, TotalPrice
FROM Orders
ORDER BY TotalPrice DESC
LIMIT 10;

SELECT OrderID, Date, Product, TotalPrice
FROM Orders
ORDER BY Date DESC
LIMIT 20;


-- ======================
-- 4) Grouping insights
-- ======================

-- by order status
SELECT 
    OrderStatus,
    COUNT(*) AS OrderCount,
    ROUND(SUM(TotalPrice), 2) AS TotalRevenue,
    ROUND(AVG(TotalPrice), 2) AS AvgOrderValue
FROM Orders
GROUP BY OrderStatus
ORDER BY TotalRevenue DESC;

-- by product
SELECT 
    Product,
    COUNT(*) AS OrderCount,
    ROUND(SUM(TotalPrice), 2) AS TotalRevenue,
    ROUND(AVG(TotalPrice), 2) AS AvgOrderValue,
    ROUND(MIN(TotalPrice), 2) AS MinSale,
    ROUND(MAX(TotalPrice), 2) AS MaxSale
FROM Orders
GROUP BY Product
ORDER BY TotalRevenue DESC;

-- payment methods
SELECT 
    PaymentMethod,
    COUNT(*) AS OrderCount,
    ROUND(SUM(TotalPrice), 2) AS TotalRevenue
FROM Orders
GROUP BY PaymentMethod
ORDER BY OrderCount DESC;

-- referral sources
SELECT 
    ReferralSource,
    COUNT(*) AS OrderCount,
    ROUND(SUM(TotalPrice), 2) AS TotalRevenue,
    ROUND(AVG(TotalPrice), 2) AS AvgOrderValue
FROM Orders
GROUP BY ReferralSource
ORDER BY TotalRevenue DESC;

-- coupon usage
SELECT 
    CouponCode,
    COUNT(*) AS UsageCount,
    ROUND(SUM(TotalPrice), 2) AS TotalRevenue,
    ROUND(AVG(TotalPrice), 2) AS AvgOrderValue
FROM Orders
GROUP BY CouponCode
ORDER BY UsageCount DESC;

-- monthly trend
SELECT 
    SUBSTR(Date, 1, 7) AS Month,
    COUNT(*) AS OrderCount,
    ROUND(SUM(TotalPrice), 2) AS MonthlyRevenue
FROM Orders
GROUP BY SUBSTR(Date, 1, 7)
ORDER BY Month;


-- ======================
-- 5) HAVING + subquery
-- ======================

-- top revenue products
SELECT 
    Product,
    ROUND(SUM(TotalPrice), 2) AS TotalRevenue
FROM Orders
GROUP BY Product
HAVING SUM(TotalPrice) > 180000
ORDER BY TotalRevenue DESC;

-- strong referral sources
SELECT 
    ReferralSource,
    COUNT(*) AS OrderCount
FROM Orders
GROUP BY ReferralSource
HAVING COUNT(*) > 240
ORDER BY OrderCount DESC;

-- above average orders
SELECT OrderID, CustomerID, Product, TotalPrice
FROM Orders
WHERE TotalPrice > (
    SELECT AVG(TotalPrice) FROM Orders
)
ORDER BY TotalPrice DESC;