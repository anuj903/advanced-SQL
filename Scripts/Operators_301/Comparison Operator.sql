-- Comparison Oprator -- Compare two things -- Expression operator expression

-- EQUAL To oprator

-- 1. Customers from USA only
SELECT * FROM customers WHERE country = 'USA';

--Not Equal to

-- 2. Customers who are NOT from GERMANY 
SELECT * FROM customers WHERE country != 'Germany';

--Greter than

-- 3. retrive customers with a score greater than 600
SELECT * FROM customers WHERE score > 600;

-- Greater than Equal to

-- 4. retrive customers with 500 or more
SELECT * FROM customers where score >= 500;

-- Less than

-- 5. retrive customers with score less than 500
SELECT * from customers where score < 500;

-- Less than equal to

-- 6. retrive customers with score less than 500
SELECT * from customers where score <= 500;


