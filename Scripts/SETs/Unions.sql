-- UNION OPERATOR
-- appending the data from multiple tables
-- number of columns must be same from both tables

SELECT FirstName,LastName 
From Sales.Customers

UNION

SELECT FirstName,LastName 
FROM Sales.Employees

-- DATA TYPES of the columns must match from both tables

SELECT 
	CustomerID as ID, 
	FirstName
FROM sales.Customers
UNION
SELECT 
	EmployeeID,
	FirstName 
	FROM Sales.Employees


-- The ORDER of columns must be same
-- Column aliases , output will take the column names from the first Select i.e first table, so choose aliases
-- Chose correct columns

--order of columns is wrong but the query still executes
SELECT 
	LastName, 
	FirstName
FROM sales.Customers
UNION
SELECT 
	FirstName,
	LastName	
FROM Sales.Employees
