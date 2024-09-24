SELECT COUNT(amount) AS "today's transactions"
FROM transactions;

SELECT MAX(amount) AS maximum
FROM transactions;

SELECT MIN(amount) AS minimum
FROM transactions;

SELECT AVG(amount) AS average
FROM transactions;

SELECT SUM(amount) AS sum
FROM transactions;

SELECT * FROM employees;

SELECT CONCAT(first_name, last_name) AS full_name
FROM employees;

SELECT CONCAT(first_name, " ", last_name) AS full_name
FROM employees;

SELECT * FROM employees;
