E-Commerce Customer Behavior Analysis

1. Project Overview

This project focuses on analyzing e-commerce customer behavior using SQL Server.

The goal is to organize customer and order data, perform data quality checks, 
and extract meaningful business insights that can help improve business decisions.

2. Dataset Information

- Dataset: E-Commerce Customer Behavior
- Total Records: 17,049
- Total Columns: 18
- Total Unique Customers: 5,000

The dataset contains information about customers, orders, products, payments, devices,
 delivery times, and customer ratings.

3. Tools & Technologies

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- SQL

4. Database Design

The database is named "EcommerceDB".

The data was organized into two main tables:

Customers Table

- Customer_ID (Primary Key)
- Age
- Gender
- City

Orders Table

- Order_ID (Primary Key)
- Customer_ID (Foreign Key)
- Date
- Product_Category
- Unit_Price
- Quantity
- Discount_Amount
- Total_Amount
- Payment_Method
- Device_Type
- Session_Duration_Minutes
- Pages_Viewed
- Is_Returning_Customer
- Delivery_Time_Days
- Customer_Rating

Relationship

- One customer can have multiple orders.
- Each order belongs to one customer.
- Relationship: One-to-Many (1:M).

5. Project Tasks

- Database creation.
- Database table creation.
- Data import and organization.
- Primary and Foreign Key implementation.
- Data validation and quality checks.
- Business analysis using SQL queries.
- Creating Indexes.
- Creating Views.

6. Business Insights

The analysis revealed several useful insights:

1. Electronics generated the highest total sales among product categories.
2. Istanbul recorded the highest total sales among cities.
3. Credit Card was the most frequently used payment method.
4. Returning customers accounted for approximately 88.2% of all orders.
5. Mobile devices generated the highest total sales.
6. Home & Garden had the highest average customer rating among product categories.

7. Indexes

Three Nonclustered Indexes were created to support frequently used queries:

- IX_Orders_Customer_ID
- IX_Orders_Date
- IX_Orders_Product_Category

8. Views

Five SQL Views were created:

- vw_TotalSalesByCategory
- vw_TotalSalesByCity
- vw_OrdersByPaymentMethod
- vw_AvgRatingByCategory
- vw_CustomerOrdersAndSales

These Views simplify access to frequently used business analysis results.

9. Project Files

- 01_Database_Design.sql
- 02_Business_Analysis.sql
- 03_Indexes_and_Views.sql
- README.md

10. Conclusion

This project demonstrates how SQL Server can be used to organize e-commerce data,
 validate database records, analyze customer behavior,
 and generate business insights to support better decision-making.