-- UNION ALL 
-- combines all rows from both queries including DULPLICATES

-- UNION ALL vs UNION
-- UNION ALL is faster and better performance, 
-- if there are no duplicates the use UNION ALL, 
-- For Checking duplicates
 
-- Combine data from customers and employees table

Select 
	FirstName,LastName 
from sales.customers
UNION							-- 8 rows in output
select
	FirstName,LastName 
from sales.employees;


Select 
	FirstName,LastName 
from sales.customers
UNION ALL							-- 10 rows in output
select
	FirstName,LastName 
from sales.employees;