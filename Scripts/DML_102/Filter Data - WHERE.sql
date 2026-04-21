USE MyDatabase;

-- Retrieve all customer Data

SELECT * FROM customers;

-- Retrieve only 2 columns

Select first_name, country
FROM customers;

--Where Clause -- Filter the Data

-- 1. Score higher than 500

Select * from customers where score > 500;

Select first_name, country from customers where score > 500;

-- 2. Score not equal to zero

SELECT * from customers where score != 0;

-- 3. Retrieve customers from germany

SELECT * FROM customers WHERE country = 'GERMANY';


