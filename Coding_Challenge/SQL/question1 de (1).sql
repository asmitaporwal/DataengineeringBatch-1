-- Create the database
CREATE DATABASE IF NOT EXISTS coding_challenge_1;

-- Use the database
USE coding_challenge_1;

-- Create the "orders" table
CREATE TABLE IF NOT EXISTS orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2)
);

-- Create a "customers" table
CREATE TABLE IF NOT EXISTS customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255)
);

-- Insert values into the "orders" table
INSERT INTO orders (order_id, customer_id, order_date, total_amount)
VALUES
    (1, 101, '2024-01-01', 50.00),
    (2, 102, '2024-01-02', 75.00),
    (3, 101, '2024-01-03', 100.00),
    (4, 103, '2024-01-04', 120.00),
    (5, 102, '2024-01-05', 90.00);
 
-- Insert values into the "customers" table 
INSERT INTO customers (customer_id, customer_name)
VALUES
    (101, 'John Doe'),
    (102, 'Jane Smith'),
    (103, 'Bob Johnson');    

-- Execute OVER and PARTITION BY Clause in SQL Queries    
SELECT
    order_id,
    customer_id,
    order_date,
    total_amount,
    SUM(total_amount) OVER (PARTITION BY customer_id) AS running_total
FROM orders; 

-- Creating subtotals
SELECT
    customer_id,
    MAX(order_date) AS last_order_date,
    COUNT(order_id) AS total_orders,
    SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id WITH ROLLUP;  

-- Total Aggregations
SELECT
    COUNT(order_id) AS total_orders,
    SUM(total_amount) AS total_spent
FROM orders;

    