-- Q4. Create a procedure to Convert a number of inches 
-- into yards, feet, and inches. For example, 124 inches 
-- equals 3 yards, 1 foot, and 4 inches.

drop procedure if exists convert_unit;
delimiter $$
create procedure convert_unit(num int)
    begin
        declare foot int;
        declare yard int;
        declare inch int default num;
        set foot = num/12;
        set yard = foot/3;
        set foot = foot mod 3;
        set inch = inch mod 12;

        select num inch , yard, foot, inch;
    end;
$$
delimiter ;