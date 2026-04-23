-- UPDATE-----UPDATE the rows of table

---ALWAYS use WHERE to avoid updating all ROWS unintentionally

-- CHANGE the SCORE of customer 6 to 0

SELECT * FROM customers;

UPDATE customers
SET score = 0
WHERE id = 6;


UPDATE customers
SET score = 356
WHERE id = 7;

-- change score of customer 7 with 555 and update the country with 'UK'

update customers
SET score = 555, Country = 'UK'
WHERE id = 7 ;


-- UPDATING THE subset of customers

-- update the score from 0 to 335

UPDATE customers
SET Score = 335
WHERE score = 0;