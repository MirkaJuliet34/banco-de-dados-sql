CREATE TABLE transactions (
  transaction_id INT PRIMARY KEY,
  
 
);

SELECT * FROM transactions;


ALTER TABLE transactions 
ADD CONSTRAINT
PRIMARY KEY(transaction_id);

SELECT * FROM transactions;

INSERT INTO transactions
VALUES (1002, 2.89); 

SELECT * FROM transactions;

SELECT amount
FROM transactions
WHERE transaction_id = 1002;

SELECT * FROM transactions;

DROP TABLE transactions;

