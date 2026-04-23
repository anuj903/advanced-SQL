-- GROUP BY CLAUSE

-- Find total score for each country


SELECT country, sum(score) as total_score FROM customers GROUP BY country Order by total_score;

-- find total score and total number of customers for each country

select * from customers;

USE MyDatabase;


SELECT country, count(first_name) as total_cust, sum(score) as total_score FROM customers GROUP by country order by total_score;