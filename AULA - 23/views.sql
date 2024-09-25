
SELECT * FROM employees;

CREATE VIEW employees_attendance AS
SELECT first_name, last_name
FROM employees;

SELECT * FROM employees_attendance; 
ORDER BY last_name ASC;

DROP VIEW employees_attendance;

ALTER TABLE customers
ADD COLUMN email VARCHAR(50);


UPDATE customers
SET email = "FFish@gmail.com"  
WHERE customer_id = 1;  
SELECT * FROM customers;

CREATE VIEW customer_emails AS
SELECT email
FROM customers;

SELECT *
FROM customer_emails;

INSERT INTO customers
VALUES (5, "Pearl", "Krabs", NULL, "PKrabs@gmail.com");

SELECT * FROM customers;

SELECT * 
FROM customer_emails;
