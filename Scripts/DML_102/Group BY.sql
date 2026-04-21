-- GROUP BY CLAUSE

-- Find total score for each country

SELECT country, sum(score) as total_score FROM customers GROUP BY country;

