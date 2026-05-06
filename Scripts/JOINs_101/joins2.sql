-- left Join 
-- fetching all data from left table and only matched from right table

-- get all customers along with their orders, including those without orders

SELECT 
	c.id, 
	c.first_name, 
	o.order_date, 
	o.sales
from customers as c 
LEFT JOIN orders as o 
ON c.id = o.customer_id

select 
	c.id, 
	c.first_name, 
	o.order_date, 
	o.sales
from orders as o
LEFT JOIN customers as c
on o.customer_id = c.id 

-- Right JOIN
-- opposite of left join, all the rows from right table but only matched values from left side, 
-- right table will be primary

-- -- get all customers along with their orders, including orders those without matching customers

SELECT 
	c.id, 
	c.first_name, 
	o.order_date, 
	o.sales
from customers as c 
RIGHT JOIN orders as o 
ON c.id = o.customer_id


-- FULL JOIN
-- EVERYTHING,,,, ALL rows from both tables, matched unmatched, ,,, everything


-- get all customers and all orders even if there's no match

select * 
from customers as c 
FULL JOIN orders as o
ON c.id = o.customer_id