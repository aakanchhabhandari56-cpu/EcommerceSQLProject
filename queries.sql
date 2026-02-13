-- Example queries to showcase skills

-- 1. List all orders with customer name and total amount
SELECT o.OrderID, c.Name AS CustomerName, o.TotalAmount, o.OrderDate
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID;

-- 2. Top 5 best-selling products
SELECT p.Name, SUM(oi.Quantity) AS TotalSold
FROM OrderItems oi
JOIN Products p ON oi.ProductID = p.ProductID
GROUP BY p.Name
ORDER BY TotalSold DESC
LIMIT 5;

-- 3. Customers with orders over $100
SELECT c.Name, c.Email, SUM(o.TotalAmount) AS TotalSpent
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.Name, c.Email
HAVING SUM(o.TotalAmount) > 100;

-- 4. Products low in stock (<20)
SELECT Name, StockQuantity
FROM Products
WHERE StockQuantity < 20;

-- 5. Monthly revenue summary
SELECT DATE_FORMAT(OrderDate, '%Y-%m') AS Month, SUM(TotalAmount) AS Revenue
FROM Orders
GROUP BY Month
ORDER BY Month;
