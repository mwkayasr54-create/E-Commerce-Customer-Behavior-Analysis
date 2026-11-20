E-Commerce Customer Behavior Analysis

Project Overview

This project focuses on analyzing customer behavior in an e-commerce business using SQL Server. It aims to transform raw customer and order data into meaningful business insights that can help understand purchasing patterns, customer preferences, and sales performance.

Dataset

- Dataset Name: E-Commerce Customer Behavior Dataset v2
- Source: Kaggle
- Total Records: 17,049
- Number of Features: 18
- Unique Customers: 5,000

The dataset contains information about customers, orders, product categories, payment methods, devices, session behavior, delivery times, discounts, and customer ratings.

Business Problem

E-commerce businesses need to understand how customers interact with their platforms and what factors influence their purchasing decisions.

This project addresses several business questions, including:

- Which product categories generate the highest sales?
- Which cities have the highest revenue?
- What are the most popular payment methods?
- How do returning customers compare with new customers?
- Which devices are most commonly used for purchases?
- What is the average customer rating for each product category?
- How does delivery time vary across cities and product categories?
- Who are the top-spending customers?

Database Design

The database is named "EcommerceDB" and consists of two main tables:

1. Customers

Stores customer information.

Column| Description
Customer_ID| Primary Key
Age| Customer age
Gender| Customer gender
City| Customer city

2. Orders

Stores order and purchasing information.

Column| Description
Order_ID| Primary Key
Customer_ID| Foreign Key
Date| Order date
Product_Category| Purchased product category
Unit_Price| Price per unit
Quantity| Number of purchased units
Discount_Amount| Applied discount
Total_Amount| Total order amount
Payment_Method| Payment method
Device_Type| Device used for ordering
Session_Duration_Minutes| Session duration
Pages_Viewed| Number of pages viewed
Is_Returning_Customer| Returning customer status
Delivery_Time_Days| Delivery duration
Customer_Rating| Customer rating

Relationship

One customer can place multiple orders.

Relationship: One-to-Many (1:M)

"Customers (1) → Orders (Many)"

Tools & Technologies

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- SQL
- GitHub
- Draw.io

SQL Analysis

The project includes 15 business analysis queries covering:

1. Total sales by product category.
2. Sales by city.
3. Most popular payment method.
4. Returning vs. new customer analysis.
5. Average customer rating by product category.
6. Average delivery time by city.
7. Most used device type.
8. Total quantity sold by product category.
9. Average order value by city.
10. Average session duration by device type.
11. Total sales by payment method.
12. Average customer rating by device type.
13. Average delivery time by product category.
14. Total sales by device type.
15. Average discount by product category.

Data Validation

Several validation checks were performed to ensure data quality and consistency:

- Verified the total number of records.
- Checked the number of unique customers.
- Checked for duplicate Order IDs.
- Checked for inconsistent customer information.
- Verified successful data insertion into the database.
- Checked customer-order relationships.
- Checked missing values and invalid data values.

Validation Results

- Original Records: 17,049
- Uploaded Orders: 17,049
- Unique Customers: 5,000
- Duplicate Orders: 0
- Inconsistent Customers: 0

Project Files

- "Database_design.sql" – Database creation, table creation, and data insertion.
- "Business_Analysis.sql" – Business analysis queries and insights.
- "Indexes_and_Views.sql" – Database indexes and views.
- "ERD.drawio.png" – Database relationship diagram.

Project Goal

The main goal is to demonstrate how SQL can be used to organize,
 validate, and analyze e-commerce data to support better business decisions.
