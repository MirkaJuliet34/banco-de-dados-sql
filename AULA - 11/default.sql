INSERT INTO products
VALUES (104, "straw", 0.00),
       (105, "napkin", 0.00),
       (106, "fork", 0.00),
       (107, "spoon", 0.00); 
DELETE FROM products
WHERE product_id >= 104;

SELECT * FROM products;

CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(25),
    price DECIMAL(4, 2) DEFAULT 0 
);

ALTER TABLE products
ALTER price SET DEFAULT 0;

INSERT INTO products (product_id, product_name)
VALUES (104, "straw"),
       (105, "napkin"),
       (106, "fork"),
       (107, "spoon");

SELECT * FROM products;

CREATE TABLE transactions (
    transaction_id INT,
    amount DECIMAL(5, 2),
    transaction_date DATETIME DEFAULT NOW() -
);

INSERT INTO transactions (transaction_id, amount)
VALUES (1, 4.99);

INSERT INTO transactions (transaction_id, amount)
VALUES (2, 2.89),
       (3, 8.37);

SELECT * FROM transactions;

DROP TABLE transactions; 
