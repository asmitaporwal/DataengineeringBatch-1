USE coding_challenge_1;

-- inner join
SELECT *
FROM orders
INNER JOIN customers ON orders.customer_id = customers.customer_id;

-- left outer join

SELECT  *
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id;

-- Right join
SELECT
    customers.customer_id,
    customers.customer_name,
    COALESCE(SUM(orders.total_amount), 0) AS total_spent
FROM customers
RIGHT JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id, customers.customer_name;

-- Cross join
SELECT DISTINCT
    customers.customer_id,
    customers.customer_name,
    orders.order_id,
    orders.order_date,
    orders.total_amount,
    orders.total_amount * 1.2 AS total_amount_with_tax
FROM customers
CROSS JOIN orders;

-- self join

SELECT o1.order_id AS id1, o1.customer_id AS customer,
       o2.order_id AS id2
FROM orders o1
JOIN orders o2 ON o1.customer_id = o2.customer_id AND o1.order_id < o2.order_id;

-- Equi join

SELECT *
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id;

-- Non Equi join

SELECT *
FROM orders
JOIN customers ON orders.customer_id>customers.customer_id;

-- natural join

SELECT *
FROM orders
NATURAL JOIN customers;




