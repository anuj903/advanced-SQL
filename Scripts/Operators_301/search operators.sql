-- SEARCH operators - 

--LIKE - searches for a pattern in text

-- Find customers whose name start with M

SELECT * FROM customers WHERE first_name LIKE 'M%';

-- Find customers whose name ends with N

SELECT * FROM customers WHERE first_name LIKE '%N';

-- Find customers whose name Contains R

SELECT * FROM customers where first_name LIKE '%r%';

-- Find customers whose name has R at 3rd position

SELECT * FROM customers where first_name LIKE '__r%';
