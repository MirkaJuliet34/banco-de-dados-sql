
ALTER TABLE employees
ADD COLUMN jobs VARCHAR(25) AFTER hourly_pay;

SELECT * FROM employees;


UPDATE employees
SET job = "manager" 
WHERE employee_id = 1; 

SELECT * FROM employees;

SELECT * 
FROM employees
WHERE hire_date < "2023-01-05" AND job = "cook";

SELECT *
FROM employees
WHERE job = "cook" OR job = "cashier";

SELECT *
FROM employees
WHERE NOT job = "manager" AND NOT job = "asst. manager";

SELECT *
FROM employees
WHERE hire_date BETWEEN "2023-01-04" AND "2023-01-07";

SELECT *
FROM employees
WHERE job IN ("cook", "cashier", "janitor");
