USE EcommerceDB;

CREATE TABLE online_sales (
    order_id INT,
    product_id INT,
    order_date DATE,
    amount DECIMAL(10, 2)
);

INSERT INTO online_sales VALUES
(1, 101, '2024-01-15', 500.00),
(2, 102, '2024-01-20', 700.00),
(3, 101, '2024-02-05', 300.00),
(4, 103, '2024-02-18', 900.00),
(5, 101, '2024-03-01', 600.00),
(6, 104, '2024-03-15', 1100.00),
(7, 102, '2024-03-30', 450.00),
(8, 101, '2024-04-10', 750.00),
(9, 104, '2024-04-12', 1300.00),
(10, 105, '2024-04-25', 850.00);

-- Monthly Revenue and Order Volume
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



