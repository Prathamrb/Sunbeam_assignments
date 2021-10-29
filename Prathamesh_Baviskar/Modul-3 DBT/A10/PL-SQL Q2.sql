-- Q2. Write a procedure that declares an integer variable
-- called num, assigns a value to it, and computes and 
-- inserts into the temp table the value of the variable 
-- itself, its square, and its cube.

DROP PROCEDURE IF EXISTS sqrt_cube;
DROP TABLE IF EXISTS temp;
CREATE TABLE temp (Number int, num_square int, num_cube int);
DELIMITER $$
    CREATE PROCEDURE sqrt_cube( n1 int)
    BEGIN
        DECLARE num int DEFAULT n1;
        DECLARE v_sqrt int;
        DECLARE v_cube int;
        SET v_sqrt = num * num;
        SET v_cube = num * num * num;
        INSERT INTO temp VALUES (num , v_sqrt, v_cube);
    END;
$$

DELIMITER ;









