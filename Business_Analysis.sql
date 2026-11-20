-- Insight 1: Calculate Total Sales for Each Product Category

SELECT
    Product_Category,
    SUM(Total_Amount) AS Total_Sales
FROM Orders
GROUP BY Product_Category
ORDER BY Total_Sales DESC;

-- Insight 2: Sales by City

SELECT
    C.City,
    SUM(O.Total_Amount) AS Total_Sales
FROM Orders O
JOIN Customers C
    ON O.Customer_ID = C.Customer_ID
GROUP BY C.City
ORDER BY Total_Sales DESC;

-- Insight 3: Most Popular Payment Method

SELECT
    Payment_Method,
    COUNT(Order_ID) AS Total_Orders
FROM Orders
GROUP BY Payment_Method
ORDER BY Total_Orders DESC;

-- Insight 4: Analyze Returning vs New Customer Orders

SELECT
    Is_Returning_Customer,
    COUNT(Order_ID) AS Total_Orders
FROM Orders
GROUP BY Is_Returning_Customer
ORDER BY Total_Orders DESC;

-- Insight 5: Average Customer Rating by Product Category

SELECT
    Product_Category,
    AVG(Customer_Rating) AS Average_Rating
FROM Orders
GROUP BY Product_Category
ORDER BY Average_Rating DESC;

-- Insight 6: Average Delivery Time by City

SELECT
    C.City,
    AVG(CAST(O.Delivery_Time_Days AS DECIMAL(10,2)))
        AS Average_Delivery_Time
FROM Orders O
JOIN Customers C
    ON O.Customer_ID = C.Customer_ID
GROUP BY C.City
ORDER BY Average_Delivery_Time DESC;

-- Insight 7: Most Used Device Type for Orders

SELECT
    Device_Type,
    COUNT(Order_ID) AS Total_Orders
FROM Orders
GROUP BY Device_Type
ORDER BY Total_Orders DESC;

-- Insight 8: Total Quantity Sold by Product Category

SELECT
    Product_Category,
    SUM(Quantity) AS Total_Quantity_Sold
FROM Orders
GROUP BY Product_Category
ORDER BY Total_Quantity_Sold DESC;

-- Insight 9: Average Order Value by City

SELECT
    C.City,
    AVG(O.Total_Amount) AS Average_Order_Value
FROM Orders O
JOIN Customers C
    ON O.Customer_ID = C.Customer_ID
GROUP BY C.City
ORDER BY Average_Order_Value DESC;

-- Insight 10: Average Session Duration by Device Type

SELECT
    Device_Type,
    AVG(CAST(Session_Duration_Minutes AS DECIMAL(10,2)))
        AS Average_Session_Duration
FROM Orders
GROUP BY Device_Type
ORDER BY Average_Session_Duration DESC;

-- Insight 11: Total Sales by Payment Method

SELECT
    Payment_Method,
    SUM(Total_Amount) AS Total_Sales
FROM Orders
GROUP BY Payment_Method
ORDER BY Total_Sales DESC;

-- Insight 12: Average Customer Rating by Device Type

SELECT
    Device_Type,
    AVG(Customer_Rating) AS Average_Rating
FROM Orders
GROUP BY Device_Type
ORDER BY Average_Rating DESC;

-- Insight 13: Average Delivery Time by Product Category

SELECT
    Product_Category,
    AVG(CAST(Delivery_Time_Days AS DECIMAL(10,2)))
        AS Average_Delivery_Time
FROM Orders
GROUP BY Product_Category
ORDER BY Average_Delivery_Time DESC;

-- Insight 14: Total Sales by Device Type

SELECT
    Device_Type,
    SUM(Total_Amount) AS Total_Sales
FROM Orders
GROUP BY Device_Type
ORDER BY Total_Sales DESC;

-- Insight 15: Average Discount Amount by Product Category

SELECT
    Product_Category,
    AVG(Discount_Amount) AS Average_Discount
FROM Orders
GROUP BY Product_Category
ORDER BY Average_Discount DESC;