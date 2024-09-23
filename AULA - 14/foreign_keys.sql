CREATE TABLE customers(
    customer_id INT PRIMARY KEY AUTO_INCREMENT, 
    first_name VARCHAR(50), 
);

SELECT * FROM customers;

INSERT INTO customers (first_name, last_name)
VALUES 
    ("Fred", "Fish"),
    ("Larry", "Lobster"),
    ("Bubble", "Bass");

SELECT * FROM customers;

CREATE TABLE transactions(
    transaction_id INT PRIMARY KEY AUTO_INCREMENT, 
    amount DECIMAL(5, 2), 
    customer_id INT, 
    FOREIGN KEY(customer_id) REFERENCES customers (customer_id) 
);

SELECT * FROM transactions;

ALTER TABLE transactions
DROP FOREIGN KEY transactions_ibfk_1;

SELECT * FROM transactions;

ALTER TABLE transactions
ADD CONSTRAINT fk_customer_id
FOREIGN KEY(customer_id) REFERENCES customers(customer_id);

SELECT * FROM transactions;

INSERT INTO transactions (amount, customer_id)
VALUES 
    (4.99, 3), 
    (2.89, 2), 
    (3.38, 3), 
    (4.99, 1); 

SELECT * FROM transactions;

DELETE FROM customers
WHERE customer_id = 3;

SELECT * FROM customers;

