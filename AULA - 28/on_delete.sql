
SELECT * FROM employees;

SET foreign_key_checks = 0;

DELETE FROM customers
WHERE customer_id = 4;

INSERT INTO customers
VALUES(4, "Poppy", "Puff", 2, "PPuff@gmail.com");

SELECT * FROM customers;

SELECT * FROM transactions;

CREATE TABLE transactions (
    transaction_id INT, PRIMARY KEY,
    amount DECIMAL(5, 2),
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
    ON DELETE SET NULL
);

ALTER TABLE transactions DROP FOREIGN KEY fk_customer_id;

ALTER TABLE transactions
ADD CONSTRAINT fk_customer_id
FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
ON DELETE SET NULL;

SELECT * FROM transactions;

DELETE FROM customers
WHERE customer_id = 4;

SELECT * FROM transactions;

INSERT INTO customers
VALUES(4, "Poppy", "Puff", 2, "PPuff@gmail.com");

SELECT * FROM customers;

ALTER TABLE transactions DROP FOREIGN KEY fk_customer_id;


ALTER TABLE transactions
ADD CONSTRAINT fk_trasactions_id
FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
ON DELETE CASCADE;

UPDATE transactions
SET customer_id = 4
WHERE transaction_id = 1005;


DELETE FROM customers
WHERE customer_id = 4;

SELECT * FROM transactions;
