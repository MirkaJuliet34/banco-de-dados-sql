
SELECT first_name, last_name, hourly_pay, 
       (SELECT AVG(hourly_pay) FROM employees) AS avg_pay  
FROM employees;  


SELECT first_name, last_name, hourly_pay
FROM employees
WHERE hourly_pay > (SELECT AVG(hourly_pay) FROM employees);  


SELECT first_name, last_name, hourly_pay
FROM employees
WHERE hourly_pay > 15.45;  

SELECT first_name, last_name
FROM customers
WHERE customer_id IN (1, 2, 3);  

(SELECT DISTINCT customer_id
FROM transactions
WHERE customer_id IS NOT NULL);  

SELECT first_name, last_name
FROM customers
WHERE customer_id NOT IN (1, 2, 3);  
