-- left anti join

-- returns row from left that has no match in right

-- ONLY unmatching ROWS

-- get all customer who hav'nt placed any orders
-- ONLY A values
select *
from customers as c
left join orders as o
ON c.id = o.customer_id
where o.customer_id is NULL



-- RIGHT ANTI JOIN
-- opposite of left anti join
-- ONLY unmatching rows from right table

-- get all orders without matching customers

select *
from customers as c
RIGHT join orders as o
ON c.id = o.customer_id
where c.id is NULL

select *
from orders as o
left join customers as c
ON c.id = o.customer_id
where c.id is NULL


-- FULL ANTI JOIN

-- only the rows that did'nt match in either table

-- only unmatching data
-- oposite on inner join

-- find customers without orders and orders without customers

SELECT * 
FROM customers as c
FULL join orders as o
ON c.id = o.customer_id
where c.id IS NULL OR o.customer_id is NULL

-- get all customers along with their orders but only for customers who have placed an order (without inner join)

SELECT * 
FROM customers as c
FULL join orders as o
ON c.id = o.customer_id
where c.id IS NOT NULL AND o.customer_id is NOT NULL



-- Cross JOIN

-- combine every row from LEFT and every row from RIGHT

-- ALL POSSIBLE COMBINATIONs

SELECT * 
FROM customers CROSS JOIN orders


--										HOW TO CHOOSE JOIN
-- ONLY MATCHING					ALL ROWS						ONLY UNMATCHING
--  INNER JOIN				ONE SIDE		BOTH SIDE			ONE SIDE			BOTH SIDE
--							LEFT JOIN		FULL JOIN		LEFT ANTI JOIN		FULL ANTI JOIN

-- SKIP RIGHT JOIN --- just flip tables


-- SQL CHALLENGE

-- JOINING MULTIPLE TABLES

-- using the salesDB, Retrieve a list of all orders, along with the related customer, product and employee details, 
-- for each order, display,
-- orderID, customername, product name, sales amt, product price, salespersons name

use SalesDB

SELECT 
	o.OrderID, 
	o.sales as SalesAmount,
	CONCAT (c.FirstName,' ',c.LastName ) as customerName,
	p.Product as productName,
	p.Price as productPrice,
	CONCAT (e.FirstName, ' ',e.LastName) as EmployeeName
FROM sales.Orders as o
LEFT JOIN Sales.Customers as c
ON o.OrderID = c.CustomerID
LEFT JOIN Sales.Products as p
ON o.ProductID = p.ProductID
LEFT JOIN Sales.Employees as e
ON o.SalesPersonID = e.EmployeeID