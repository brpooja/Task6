# Task6

Here's a clean and professional `README.md` (Add Me file) content for your **Online Sales Analysis** SQL project:

---

#  Online Sales Analysis Using SQL

This project analyzes an `online_sales` dataset using SQL to understand **monthly revenue** and **order volume trends** over time.

---

##  Table: `online_sales`

| Column       | Type      | Description               |
| ------------ | --------- | ------------------------- |
| `order_id`   | `INT`     | Unique order identifier   |
| `product_id` | `INT`     | ID of the product sold    |
| `order_date` | `DATE`    | Date of the order         |
| `amount`     | `DECIMAL` | Total amount of the order |

---

## Sample Data

The dataset contains 10 entries covering orders from **January to April 2024**.

```sql
INSERT INTO online_sales VALUES
(1, 101, '2024-01-15', 500.00),
(2, 102, '2024-01-20', 700.00),
-- ...
(10, 105, '2024-04-25', 850.00);
```

---

## Key Queries

### 🔹 Monthly Revenue & Order Volume

```sql
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM 
    online_sales
GROUP BY 
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY 
    year, month;
```

 This query helps track performance over **each month**.

---

### 🔹 Filtered Analysis (Jan–Mar 2024)

```sql
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM 
    online_sales
WHERE 
    order_date BETWEEN '2024-01-01' AND '2024-03-31'
GROUP BY 
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY 
    year, month;
```

 This query focuses on **Q1 performance** only.

---

##  Learning Objectives

* Understand how to use `EXTRACT()` for date-based grouping
* Apply `SUM()` and `COUNT()` for revenue and volume analysis
* Use `WHERE` and `BETWEEN` for date filtering
* Learn basic trend analysis in sales data

---

## Tools Used

* SQL (Compatible with PostgreSQL / MySQL)
* Any SQL client (e.g., **pgAdmin**, **DBeaver**, **MySQL Workbench**)

---

## How to Run

1. Create the `EcommerceDB` database
2. Create the `online_sales` table and insert values
3. Run the provided queries to get monthly revenue trends

---

