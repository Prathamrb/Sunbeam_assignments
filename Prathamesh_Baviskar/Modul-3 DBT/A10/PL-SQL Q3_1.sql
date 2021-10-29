-- Q3. Create a procedure to Convert a temperature in Fahrenheit (F)
-- to its equivalent in Celsius (C) and vice versa. 
-- The required formulae are:- C= (F-32)*5/9 F= 9/5*C + 32

DROP PROCEDURE IF EXISTS Celsius_to_fahrenheit;

delimiter $$
    create procedure Celsius_to_fahrenheit(c int)
    begin
        Declare f decimal(10,2);
        set f = 9/5*c + 32 ;
        select concat(c,'*C') Celsius, concat(f,'*F') Fahrenheit;
    end;

$$
delimiter ;














