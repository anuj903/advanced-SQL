-- Having Clause

-- Filter the data but after the aggregation 

-- WHERE - row level filter, HAVING - group level filter

-- 1. total score more than 800 

SELECT country, sum(score) as total_score 
FROM customers 
GROUP BY country 
HAVING sum(score) > 800;

-- find the average score for each country considering only customers with score not equal to 0
-- and returen only countries whoose average score greater than 450

SELECT country, avg(score) as Avg_score from customers where score != 0 group by country Having avg(score) > 450;

select * from customers