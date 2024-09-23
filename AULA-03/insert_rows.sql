INSERT INTO employees 
VALUES(1, "Carlos", "Krabs", 25.50, "2023-01-02");

SELECT * FROM employees;

INSERT INTO employees (employee_id, first_name, last_name, email, hourly_pay, hire_date)
VALUES 
    (2, 'Squidward', 'Tentacles', NULL, 15.00, '2023-01-03'),  
    (3, 'Spongebob', 'Squarepants', NULL, 12.50, '2023-01-04'), 
    (4, 'Patrick', 'Star', NULL, 12.50, '2023-01-05'),         
    (5, 'Sandy', 'Cheeks', NULL, 17.25, '2023-01-06');         

SELECT * FROM employees;

=======================

USE myDB;

INSERT INTO employees (employee_id, first_name, last_name)
VALUES (6, 'Sheldon', 'Plankton');  

SELECT * FROM employees;

DESCRIBE employees;
