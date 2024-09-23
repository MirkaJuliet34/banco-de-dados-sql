USE myDB; 

ALTER TABLE products
MODIFY price DECIMAL(4, 2) NOT NULL; 

SELECT * FROM products;



USE myDB; 

INSERT INTO products
VALUES (104, "cookie", 0); 

SELECT * FROM products;
