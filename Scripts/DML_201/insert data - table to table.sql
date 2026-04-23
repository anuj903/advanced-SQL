-- Insert the data from customers table to persons

CREATE TABLE persons (
	id int NOT NULL,
	person_name varchar(50) NOT NULL,
	birth_date date,
	phone varchar(15) NOT NULL,
	constraint pk_persons PRIMARY KEY (id)
)



INSERT INTO persons(id, person_name, birth_date, phone)
SELECT id, first_name, Null, 'unknown' FROM customers;



SELECT * FROM persons;