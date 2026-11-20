USE EcommerceDB;
GO

CREATE TABLE Customers (
    Customer_ID VARCHAR(20) PRIMARY KEY,
    Age INT,
    Gender VARCHAR(20),
    City VARCHAR(100)
);

CREATE TABLE Orders (
    Order_ID VARCHAR(20) PRIMARY KEY,
    Customer_ID VARCHAR(20) NOT NULL,
    Date DATE,
    Product_Category VARCHAR(100),
    Unit_price DECIMAL(10,2),
    Quality INT,
    Discount_Amount DECIMAL(10,2),
    Total_Amount DECIMAL(10,2),
    Payment_Method VARCHAR(50),
    Device_Type VARCHAR(50),
    Session_Duration_Minutes INT,
    Pages_Viewed INT,
    Is_Retuming_Customer VARCHAR(20),
    Delivery_Time_Days INT,
    Customer_Rating DECIMAL(3,2),

    FOREIGN KEY (Customer_ID)
    REFERENCES Customers(Customer_ID)
);

INSERT INTO Customers (
    Customer_ID,
    Age,
    Gender,
    City
)
SELECT DISTINCT
    Customer_ID,
    Age,
    Gender,
    City
FROM ecommerce_customer_behavior_dataset_v2;

INSERT INTO Orders (
    Order_ID,
    Customer_ID,
    Date,
    Product_Category,
    Unit_Price,
    Quantity,
    Discount_Amount,
    Total_Amount,
    Payment_Method,
    Device_Type,
    Session_Duration_Minutes,
    Pages_Viewed,
    Is_Returning_Customer,
    Delivery_Time_Days,
    Customer_Rating
)
SELECT
    Order_ID,
    Customer_ID,
    Date,
    Product_Category,
    Unit_Price,
    Quantity,
    Discount_Amount,
    Total_Amount,
    Payment_Method,
    Device_Type,
    Session_Duration_Minutes,
    Pages_Viewed,
    Is_Returning_Customer,
    Delivery_Time_Days,
    Customer_Rating
FROM ecommerce_customer_behavior_dataset_v2;

SELECT COUNT(*) AS Total_Customers
FROM Customers;

SELECT COUNT(*) AS Total_Orders
FROM Orders;

SELECT TOP 10 * FROM Customers;

SELECT TOP 10 * FROM Orders;

SELECT COUNT(*) AS Unmatched_Orders
FROM Orders O
LEFT JOIN Customers C
    ON O.Customer_ID = C.Customer_ID
WHERE C.Customer_ID IS NULL;

SELECT *
FROM Orders
WHERE Order_ID IS NULL
   OR Customer_ID IS NULL;

SELECT
Order_ID,
COUNT(*) AS Repeated_Count
FROM Orders
GROUP BY Order_ID
HAVING COUNT(*) > 1;

SELECT Customer_ID
FROM Customers
GROUP BY Customer_ID
HAVING COUNT(*) > 1;

SELECT Customer_ID
FROM ecommerce_customer_behavior_dataset_v2
GROUP BY Customer_ID
HAVING COUNT(DISTINCT Age) > 1
    OR COUNT(DISTINCT Gender) > 1
    OR COUNT(DISTINCT City) > 1;

SELECT
    TABLE_NAME,
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH,
    IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME IN ('Customers', 'Orders')
ORDER BY TABLE_NAME, ORDINAL_POSITION;

SELECT
    COUNT(*) AS Total_Rows,
    COUNT(Age) AS Age_Not_Null,
    COUNT(Gender) AS Gender_Not_Null,
    COUNT(City) AS City_Not_Null
FROM Customers;

SELECT
    COUNT(*) AS Total_Rows,
    COUNT(Order_ID) AS Order_ID_Count,
    COUNT(Customer_ID) AS Customer_ID_Count,
    COUNT(Date) AS Date_Count,
    COUNT(Product_Category) AS Product_Category_Count,
    COUNT(Unit_Price) AS Unit_Price_Count,
    COUNT(Quantity) AS Quantity_Count,
    COUNT(Discount_Amount) AS Discount_Count,
    COUNT(Total_Amount) AS Total_Amount_Count,
    COUNT(Payment_Method) AS Payment_Method_Count,
    COUNT(Device_Type) AS Device_Type_Count,
    COUNT(Session_Duration_Minutes) AS Session_Count,
    COUNT(Pages_Viewed) AS Pages_Count,
    COUNT(Is_Returning_Customer) AS Returning_Customer_Count,
    COUNT(Delivery_Time_Days) AS Delivery_Count,
    COUNT(Customer_Rating) AS Rating_Count
FROM Orders;

SELECT *
FROM Customers
WHERE Age <= 0;

SELECT *
FROM Orders
WHERE Unit_Price < 0
   OR Quantity <= 0
   OR Discount_Amount < 0
   OR Total_Amount < 0;

SELECT *
FROM Orders
WHERE Customer_Rating < 0
   OR Customer_Rating > 5
   OR Delivery_Time_Days < 0;