USE EcommerceDB;
GO

-- INDEXES:

-- Index 1: Improve Customer Lookup and JOIN Performance

CREATE NONCLUSTERED INDEX IX_Orders_Customer_ID
ON Orders (Customer_ID);
GO

-- Index 2: Improve Date-Based Analysis

CREATE NONCLUSTERED INDEX IX_Orders_Date
ON Orders (Date);
GO

-- Index 3: Improve Product Category Analysis

CREATE NONCLUSTERED INDEX IX_Orders_Product_Category
ON Orders (Product_Category);
GO


-- VIEWS:

-- View 1: Total Sales by Product Category

CREATE VIEW vw_TotalSalesByCategory AS
SELECT
    Product_Category,
    SUM(Total_Amount) AS Total_Sales
FROM Orders
GROUP BY Product_Category;
GO

SELECT *
FROM vw_TotalSalesByCategory;
GO


-- View 2: Total Sales by City

CREATE VIEW vw_TotalSalesByCity AS
SELECT
    C.City,
    SUM(O.Total_Amount) AS Total_Sales
FROM Orders O
INNER JOIN Customers C
    ON O.Customer_ID = C.Customer_ID
GROUP BY C.City;
GO

SELECT *
FROM vw_TotalSalesByCity
ORDER BY Total_Sales DESC;
GO


-- View 3: Orders Count by Payment Method

CREATE VIEW vw_OrdersByPaymentMethod AS
SELECT
    Payment_Method,
    COUNT(Order_ID) AS Total_Orders
FROM Orders
GROUP BY Payment_Method;
GO

SELECT *
FROM vw_OrdersByPaymentMethod
ORDER BY Total_Orders DESC;
GO


-- View 4: Average Customer Rating by Product Category

CREATE VIEW vw_AvgRatingByCategory AS
SELECT
    Product_Category,
    AVG(Customer_Rating) AS Average_Rating
FROM Orders
GROUP BY Product_Category;
GO

SELECT *
FROM vw_AvgRatingByCategory
ORDER BY Average_Rating DESC;
GO


-- View 5: Customer Orders and Sales

CREATE VIEW vw_CustomerOrdersAndSales AS
SELECT
    C.Customer_ID,
    C.City,
    COUNT(O.Order_ID) AS Total_Orders,
    SUM(O.Total_Amount) AS Total_Sales
FROM Customers C
INNER JOIN Orders O
    ON C.Customer_ID = O.Customer_ID
GROUP BY
    C.Customer_ID,
    C.City;
GO

SELECT TOP 10 *
FROM vw_CustomerOrdersAndSales
ORDER BY Total_Sales DESC;
GO