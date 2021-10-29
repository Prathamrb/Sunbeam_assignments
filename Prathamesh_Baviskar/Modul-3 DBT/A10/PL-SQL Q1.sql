-- Q1. Write a procedure that computes the perimeter and the 
-- area of a rectangle. Define your own values for the length
-- and width. (Assuming that L and W are the length and 
-- width of the rectangle, Perimeter = 2*(L+W) and Area = L*W.)

DROP PROCEDURE IF EXISTS perimeter_area;

DELIMITER $$

CREATE PROCEDURE perimeter_area(length int, width int)
BEGIN
    DECLARE area int;
    DECLARE perimeter int;
    SET perimeter = 2 * (length + width);
    SET area = length * width; 
    select length, width, area , perimeter;
END;
$$

DELIMITER ;