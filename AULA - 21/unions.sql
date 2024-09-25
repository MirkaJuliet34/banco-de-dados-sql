
SELECT first_name, last_name FROM employees;

UNION

SELECT first_name, last_name FROM customers;

INSERT INTO customers
VALUES(5, "Sheldon", "Plankton");


SELECT * FROM customers; 

SELECT first_name, last_name FROM employees;


UNION ALL


SELECT first_name, last_name FROM customers;


DELETE FROM customers
WHERE customer_id = 5;


SELECT * FROM customers;
