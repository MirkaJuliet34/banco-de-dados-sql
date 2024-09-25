
SHOW INDEXES FROM customers;


CREATE INDEX last_name_idx
ON customers(last_name);

SHOW INDEXES FROM customers;


SELECT * FROM customers
WHERE last_name = "Puff";


SELECT * FROM customers
WHERE first_name = "Poppy";


CREATE INDEX last_name_first_name_idx
ON customers(last_name, first_name);

SHOW INDEXES FROM customers;


DROP INDEX last_name_idx;

SHOW INDEXES FROM customers;


SELECT * FROM customers
WHERE last_name = "Puff" AND first_name = "Poppy";
