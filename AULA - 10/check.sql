CREATE TABLE employees(
    employee_id INT,              
    first_name VARCHAR(50),       
    last_name VARCHAR(50),        
    hourly_pay DECIMAL(5, 2),     
    hire_date DATE,               
    CONSTRAINT chk_hourly_pay CHECK (hourly_pay >= 10.00)  

ALTER TABLE employees
ADD CONSTRAINT chk_hourly_pay CHECK (hourly_pay >= 10.00);

INSERT INTO employees
VALUES (6, 'Sheldon', 'Planjton', 10.00, '2023-01-07');

ALTER TABLE employees
DROP CHECK chk_hourly_pay;
