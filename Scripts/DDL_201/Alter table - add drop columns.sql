--- Alter - changing the defination of table

-- ADD new column
ALTER table persons
ADD email varchar(50) NOT NULL

-- remove column from the table

ALTER table persons
DROP COLUMN email