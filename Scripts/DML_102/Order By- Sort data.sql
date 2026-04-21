-- SORT THE DATA - ORDER BY CLAUSE


-- 1. sort by score
SELECT * FROM customers ORDER BY score;
SELECT * FROM customers ORDER BY score DESC;

-- 2. Sort by country

SELECT * FROM customers ORDER BY country ASC, score DESC;