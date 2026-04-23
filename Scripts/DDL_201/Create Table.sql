-- DDL data defination Language , 
-- Create new table called persons with columns id, person_name, birth_date, phone

CREATE TABLE persons (
	id int NOT NULL,
	person_name varchar(50) NOT NULL,
	birth_date date,
	phone varchar(15) NOT NULL,
	constraint pk_persons PRIMARY KEY (id)
)

select * from persons;