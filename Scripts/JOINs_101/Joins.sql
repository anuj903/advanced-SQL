-- JOINS 
-- retrieving data from multiple tables
-- connecting 2 tables using matching value

-- 1. recombine data
-- 2. Data enrichment " getting extra data "
-- 3. check for existence "filtering"

-- JOIN Types
-- matching data
-- ALL Data
-- Unmatched data

-- 1. NO JOIN - return data from multiple tables without combining them.

SELECT * FROM customers;
SELECT * FROM orders;


-- 2. INNER JOIN -- ONLY MATCHING ROWS FROM BOTH TABLES


--get all customers along with their orders but only for customers who have placed orders

SELECT c.id, c.first_name, o.order_id, o.sales 
FROM customers c 
INNER JOIN  orders o
ON c.id = o.customer_id;
