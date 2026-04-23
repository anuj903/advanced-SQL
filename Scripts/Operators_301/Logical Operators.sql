-- LOGICAL operators
-- AND - All conditions must be true

-- 1. retrieve customers from usa and score higher than 500

SELECT * FROM customers WHERE country = 'USA' AND score > 500;

-- OR - ATleast ONE condition must be TRUE

-- 2. retrieve customers from usa OR score higher than 500

SELECT * FROM customers WHERE country = 'USA' OR score > 500;

-- NOT - (Reverse) Exclude all Matching values

-- retrive all customers with score NOT less than 500

SELECT * FROM customers where NOT Score < 500;



