USE myDB; 

CREATE TABLE TEST(
    my_date DATE,        
    my_time TIME,        
    my_datetime DATETIME 
);

SELECT * FROM test;




USE myDB; 

INSERT INTO test
VALUES (CURRENT_DATE(), CURRENT_TIME(), NOW());

SELECT * FROM test;


USE myDB; 

INSERT INTO test
VALUES (CURRENT_DATE() + 1, NULL, NULL);

SELECT * FROM test;


USE myDB; 

INSERT INTO test
VALUES (CURRENT_DATE() - 1, NULL, NULL);

SELECT * FROM test;
