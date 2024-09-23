SHOW COLUMNS FROM employees; 


SET SQL_SAFE_UPDATES = 1; 


UPDATE employees
SET hourly_pay = 10.25
WHERE employee_id = 6;

SELECT * FROM employees;


USE myDB;

UPDATE employees
SET hourly_pay = 10.25,
    hire_date = "2023-01-07"
WHERE employee_id = 6;


USE myDB;

UPDATE employees
SET hire_date = NULL
WHERE employee_id = 6;


USE myDB;

UPDATE employees
SET hourly_pay = 10.25;

SELECT * FROM employees;


USE myDB;

DELETE FROM employees
WHERE employee_id = 6;

SELECT * FROM employees;
