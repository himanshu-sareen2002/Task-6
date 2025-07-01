# Task-6
SQL Basic functions
# 🛒 Task 6: Sales Trend Analysis Using SQL

## 📌 Objective
Analyze monthly **sales trends** from an e-commerce dataset by calculating:
- Total **quantity sold**
- Total **order volume**
- Total **revenue**

The goal is to identify the **top 3 months** with the highest revenue using SQL aggregation techniques.

---

## 🧰 Tools Used
- **MySQL** for writing and executing SQL queries

---

## 🗃️ Dataset Overview
Assumed table: `online_sales_dataset`

Key columns used:
- `InvoiceDate`: Date of order
- `Quantity`: Number of items sold
- `UnitPrice`: Price per item
- `InvoiceNo`: Unique ID per order (used as `order_id`)

---

## 🧠 SQL Concepts Applied
- `EXTRACT()` function for extracting **year** and **month**
- `GROUP BY` for aggregating data by month
- `SUM()` and `COUNT(DISTINCT)` for computing metrics
- `ORDER BY` and `LIMIT` to get the **top 3 months by revenue**

---

## 🧾 SQL Query

```sql
SELECT 
    EXTRACT(YEAR FROM InvoiceDate) AS year,
    EXTRACT(MONTH FROM InvoiceDate) AS month,
    SUM(Quantity) AS total_quantity_sold,
    COUNT(DISTINCT InvoiceNo) AS order_volume,
    SUM(Quantity * UnitPrice) AS total_revenue
FROM online_sales_dataset
GROUP BY year, month
ORDER BY total_revenue DESC
LIMIT 3;
