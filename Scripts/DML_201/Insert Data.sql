--- INSERT The data into table

-- Number of columns and values MUST match

INSERT INTO customers (id, first_name, country, score)
VALUES 
	(6, 'Anna', 'USA', NULL),
	(7, 'sam', 'NULL', NULL),
	(8, 'steve', 'USA', 696);

SeLECT * FROM customers;


INSERT INTO customers 
VALUES 
	(9, 'tony', 'africa', 339);