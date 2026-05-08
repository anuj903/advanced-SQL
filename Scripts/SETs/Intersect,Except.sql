-- Except

-- Returns all distinct rows from the first query that are not found in the second query.
-- order of the queries affect the final output

SELECT 
	FirstName, LastName
	FROM sales.Customers
EXCEPT
SELECT 
	FirstName, LastName
	FROM sales.Employees;


-- INTERSECT

-- Returns common rows between two tables, 

--Employees who are customers
SELECT 
	FirstName, LastName
	FROM sales.Employees
Intersect
SELECT 
	FirstName, LastName
	FROM sales.Customers;


--SETS Challenge

-- Orders are stored in the separate tables (orders & ordersarchive)

-- combine all orders in one report without duplicate


select 
	'orders' as [sourceTable],
	[OrderID]
      ,[ProductID]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[OrderDate]
      ,[ShipDate]
      ,[OrderStatus]
      ,[ShipAddress]
      ,[BillAddress]
      ,[Quantity]
      ,[Sales]
      ,[CreationTime] 
from sales.orders
UNION
select 
	'orderArchive' as [sourceTable],
	[OrderID]
      ,[ProductID]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[OrderDate]
      ,[ShipDate]
      ,[OrderStatus]
      ,[ShipAddress]
      ,[BillAddress]
      ,[Quantity]
      ,[Sales]
      ,[CreationTime]
from sales.OrdersArchive

order by OrderID;
