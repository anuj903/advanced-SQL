-- TOP -- LIMIT


-- retrieve only 3 customers
SELECT TOP 3 * FROM customers;

-- Retrieve the top 3 from customers with highest scores

select TOP 3 * from customers order by score DESC;

---- Retrieve the top 3 from customers with lowest scores
select TOP 3 * from customers order by score;


-- get two recent orders
select TOP 2 * from orders order by order_date DESC;


