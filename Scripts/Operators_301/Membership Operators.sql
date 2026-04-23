-- Membership Operators

-- IN Operator - Checks if value exists in the list

-- retrieve customers from usa and germany

SELECT * FROM customers WHERE country IN ('USA', 'Germany');

-- NOT IN - 

-- retrieve customers who are not from UK and germany

SELECT * FROM customers WHERE country NOT IN ('UK', 'Germany');
