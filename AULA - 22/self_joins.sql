
UPDATE customers
SET referal_id = 1
WHERE customer_id = 2;

SELECT * FROM customers;


SELECT * 
FROM customers AS a
INNER JOIN customers AS b
ON a.referral_id = b.customer_id;

SELECT a.customer_id, a.first_name, a.last_name,
       b.first_name, b.last_name 
FROM customers AS a
INNER JOIN customers AS b
ON a.referral_id = b.customer_id;

SELECT a.customer_id, a.first_name, a.last_name,
       CONCAT(b.first_name, " ", b.last_name) AS "referred_by"
FROM customers AS a
INNER JOIN customers AS b
ON a.referral_id = b.customer_id;

ALTER TABLE employees
ADD supervisor_id INT;

SELECT * FROM employees;

UPDATE employees
SET supervisor_id = 5
WHERE employee_id = 2;

SELECT * FROM employees;


SELECT *
FROM employees AS a
INNER JOIN employees AS b
ON a.supervisor_id = b.employee_id;

SELECT a.first_name, a.last_name,
       CONCAT(b.first_name, " ", b.last_name) AS "reports to"
FROM employees AS a
LEFT JOIN employees AS b
ON a.supervisor_id = b.employee_id;
