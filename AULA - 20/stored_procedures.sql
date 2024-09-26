
SELECT DISTINCT first_name, last_name
FROM transactions
INNER JOIN customers
ON transactions.customer_id = customers.customer_id;




DELIMITER $$


CREATE PROCEDURE get_customers()
BEGIN
    SELECT * FROM customers; -
END $$


DELIMITER;


CALL get_customers();

DROP PROCEDURE get_customers;


CALL get_customers();

DELIMITER $$


CREATE PROCEDURE find_customers(IN id INT)
BEGIN
    SELECT *
    FROM customers
    WHERE customer_id = id; 
END $$

DELIMITER;


CALL find_customer(1); 

DROP PROCEDURE find_customer;

DELIMITER $$


CREATE PROCEDURE find_customer(IN f_name VARCHAR(50), 
                               IN l_name VARCHAR(50)) 
BEGIN
    SELECT *
    FROM customers
    WHERE first_name = f_name AND last_name = l_name; 
END $$

DELIMITER;

CALL find_customer("Larry", "Lobster");
