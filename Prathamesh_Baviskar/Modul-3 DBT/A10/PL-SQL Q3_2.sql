-- Q3. Create a procedure to Convert a temperature in Fahrenheit (F)
-- to its equivalent in Celsius (C) and vice versa. 
-- The required formulae are:- C= (F-32)*5/9 F= 9/5*C + 32

DROP PROCEDURE IF EXISTS fahrenheit_to_celsius;

delimiter $$
    create procedure fahrenheit_to_celsius(f int)
    begin
        Declare c decimal(10,2);
        set c = (f-32)*5/9;
        select concat(f,'*F') Fahrenheit, concat(c,'*C') Celsius;
    end;

$$
delimiter ;