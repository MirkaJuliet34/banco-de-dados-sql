USE myDB; 

SELECT last_name, first_name
FROM employees;


USE myDB; 

SELECT * 
FROM employees
WHERE employee_id = 2;


USE myDB; 

SELECT * 
FROM employees
WHERE first_name = "Spongebob";


SELECT * 
FROM employees
WHERE hourly_pay >= 15;


SELECT * 
FROM employees
WHERE hire_date <= "2023-01-03";



SELECT * 
FROM employees
WHERE employee_id != 1;

DESCRIBE employees;



SELECT * 
FROM employees
WHERE hire_date IS NULL;

DESCRIBE employees;



USE myDB; 

SELECT * 
FROM employees
WHERE hire_date IS NOT NULL;

DESCRIBE employees;
