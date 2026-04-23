-- RANGE Operators

-- BETWEEN -- FIlter beween Range

-- retrive customers with score between 100 and 500

SELECT * FROM customers WHERE score BETWEEN 100 AND 500;

SELECT * FROM customers WHERE score >= 100 AND score <= 500;

