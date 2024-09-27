ALTER TABLE employees
ADD COLUMN salary DECIMAL(10, 2) AFTER hourly_pay;

SELECT * FROM employees;

-
UPDATE employees
SET salary = hourly_pay * 2000;

SELECT * FROM employees;


CREATE TRIGGER before_hourly_pay_update
BEFORE UPDATE ON employees
FOR EACH ROW
SET NEW.salary = (NEW.hourly_pay * 2080);

SHOW TRIGGERS;


UPDATE employees
SET hourly_pay = 50
WHERE employee_id = 1;

SELECT * FROM employees;


UPDATE employees
SET hourly_pay = hourly_pay + 1;

SELECT * FROM employees;

DELETE FROM employees
WHERE employee_id = 6;

SELECT * FROM employees;


CREATE TRIGGER before_hourly_pay_insert
BEFORE INSERT ON employees
FOR EACH ROW
SET NEW.salary = (NEW.hourly_pay * 2080);


INSERT INTO employees
VALUES(6, "Sheldon", "Plankton", 10, NULL, "janitor", "2023-01-07", 5);

SELECT * FROM employees;


CREATE TABLE expenses(
    expense_id INT PRIMARY KEY,
    expense_name VARCHAR(50),
    expense_total DECIMAL(10, 2)
);

INSERT INTO expenses
VALUES  (1, "salaries", 0),
        (2, "supplies", 0),
        (3, "taxes", 0);

UPDATE expenses
SET expense_total = (SELECT SUM(salary) FROM employees)
WHERE expense_name = "salaries";


SELECT * FROM expenses;


CREATE TRIGGER after_salary_delete
AFTER DELETE ON employees
FOR EACH ROW
UPDATE expenses
SET expense_total = expense_total - OLD.salary
WHERE expense_name = "salaries";

DELETE FROM employees
WHERE employee_id = 6;

SELECT * FROM expenses;


CREATE TRIGGER after_salary_insert
AFTER INSERT ON employees
FOR EACH ROW
UPDATE expenses
SET expense_total = expense_total + NEW.salary
WHERE expense_name = "salaries";

INSERT INTO employees
VALUES(6, "Sheldon", "Plankton", 10, NULL, "janitor", "2023-01-07", 5);

SELECT * FROM expenses;


CREATE TRIGGER after_salary_update
AFTER UPDATE ON employees
FOR EACH ROW
UPDATE expenses
SET expense_total = expense_total + (NEW.salary - OLD.salary)
WHERE expense_name = "salaries";


UPDATE employees
SET hourly_pay = 100
WHERE employee_id = 1;

SELECT * FROM expenses;
