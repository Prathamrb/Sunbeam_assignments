Database Technologies – Assignment 10

Note: use “classwork” database to solve below queries
Use ALTER statement to solve following problems.
Q1. Write a SQL statement to rename the table EMP to EMPLOYEE.
Ans: -
D4_56327>ALTER TABLE emp RENAME TO employee;
Query OK, 0 rows affected (1.23 sec)

D4_56327>show tables;
+------------------------+
| Tables_in_classwork123 |
+------------------------+
| bonus                  |
| books                  |
| dept                   |
| dummy                  |
| employee               |
| salgrade               |
+------------------------+
6 rows in set (0.00 sec)

Q2. Write a SQL statement to add a column region to the
 table DEPT.
Ans: -
D4_56327>ALTER TABLE dept ADD region varchar(20);
Query OK, 0 rows affected (1.49 sec)
Records: 0  Duplicates: 0  Warnings: 0

D4_56327>describe dept;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| deptno | int         | YES  |     | NULL    |       |
| dname  | varchar(40) | YES  |     | NULL    |       |
| loc    | varchar(40) | YES  |     | NULL    |       |
| region | varchar(20) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.12 sec)

Q3. Write a SQL statement to add a dummy_ID as the first
 column of the table DUMMY.
Ans: -
D4_56327>ALTER TABLE dummy ADD dummy_ID int FIRST;
Query OK, 0 rows affected (1.50 sec)
Records: 0  Duplicates: 0  Warnings: 0

D4_56327>select * from dummy;
+----------+-------+
| dummy_ID | dummy |
+----------+-------+
|     NULL |     0 |
+----------+-------+
1 row in set (0.00 sec)

Q4. Write a SQL statement to change the data type of the
 column sal to float in the table EMP.
Ans: -
D4_56327>ALTER TABLE employee MODIFY sal float;
Query OK, 14 rows affected (2.14 sec)
Records: 14  Duplicates: 0  Warnings: 0

D4_56327>describe employee;
+--------+--------------+------+-----+---------+-------+
| Field  | Type         | Null | Key | Default | Extra |
+--------+--------------+------+-----+---------+-------+
| empno  | int          | YES  |     | NULL    |       |
| ename  | varchar(40)  | YES  |     | NULL    |       |
| job    | varchar(40)  | YES  |     | NULL    |       |
| mgr    | int          | YES  |     | NULL    |       |
| hire   | date         | YES  |     | NULL    |       |
| sal    | float        | YES  |     | NULL    |       |
| comm   | decimal(8,2) | YES  |     | NULL    |       |
| deptno | int          | YES  |     | NULL    |       |
+--------+--------------+------+-----+---------+-------+
8 rows in set (0.02 sec)

Q5. Write a SQL statement to drop the column region from 
the table DEPT.
Ans: -
D4_56327>ALTER TABLE dept drop column region;
Query OK, 0 rows affected (1.71 sec)
Records: 0  Duplicates: 0  Warnings: 0

D4_56327>describe dept;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| deptno | int         | YES  |     | NULL    |       |
| dname  | varchar(40) | YES  |     | NULL    |       |
| loc    | varchar(40) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
3 rows in set (0.12 sec)


PL-SQL
Q1. Write a procedure that computes the perimeter and the 
area of a rectangle. Define your own values for the length
 and width. (Assuming that L and W are the length and 
 width of the rectangle, Perimeter = 2*(L+W) and Area = L*W.)
Ans: -
{
DROP PROCEDURE IF EXISTS perimeter_area;
DELIMITER $$
	CREATE PROCEDURE perimeter_area(length int, width int)
	BEGIN
		DECLARE area int;
		DECLARE perimeter int;
		SET perimeter = 2 * (length + width);
		SET area = length * width; 
		select lenght, width, area , perimeter;
	END;
$$
DELIMITER ;
}

D4_56327>call perimeter_area(100,25);
+--------+-------+------+-----------+
| length | width | area | perimeter |
+--------+-------+------+-----------+
|    100 |    25 | 2500 |       250 |
+--------+-------+------+-----------+
1 row in set (0.06 sec)

Query OK, 0 rows affected (0.06 sec)

Q2. Write a procedure that declares an integer variable
 called num, assigns a value to it, and computes and 
 inserts into the temp table the value of the variable 
 itself, its square, and its cube.
Ans: -
{
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
}

D4_56327>call sqrt_cube(15);
Query OK, 1 row affected (0.38 sec)

D4_56327>call sqrt_cube(37);
Query OK, 1 row affected (0.12 sec)

D4_56327>call sqrt_cube(451);
Query OK, 1 row affected (0.15 sec)

D4_56327>select * from temp;
+--------+------------+----------+
| Number | num_square | num_cube |
+--------+------------+----------+
|     15 |        225 |     3375 |
|     37 |       1369 |    50653 |
|    451 |     203401 | 91733851 |
+--------+------------+----------+
3 rows in set (0.00 sec)

Q3. Create a procedure to Convert a temperature in Fahrenheit (F)
 to its equivalent in Celsius (C) and vice versa. 
 The required formulae are:- C= (F-32)*5/9 F= 9/5*C + 32
Ans: -
{
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
}

D4_56327>call Celsius_to_fahrenheit(100);
+---------+------------+
| Celsius | Fahrenheit |
+---------+------------+
| 100*C   | 212.00*F   |
+---------+------------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)


{
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
}
D4_56327>call fahrenheit_to_celsius(250);
+------------+----------+
| Fahrenheit | Celsius  |
+------------+----------+
| 250*F      | 121.11*C |
+------------+----------+
1 row in set (0.03 sec)

Query OK, 0 rows affected (0.04 sec)

Q4. Create a procedure to Convert a number of inches 
into yards, feet, and inches. For example, 124 inches 
equals 3 yards, 1 foot, and 4 inches.
Ans: -
{
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
}

D4_56327>call convert_unit(124);
+------+------+------+------+
| inch | yard | foot | inch |
+------+------+------+------+
|  124 |    3 |    1 |    4 |
+------+------+------+------+
1 row in set (0.04 sec)

Query OK, 0 rows affected (0.04 sec)

Q5. Create a procedure that takes department ID and changes
 the manager ID for the department to the employee in the
 department with lowest salary.
Ans: -



