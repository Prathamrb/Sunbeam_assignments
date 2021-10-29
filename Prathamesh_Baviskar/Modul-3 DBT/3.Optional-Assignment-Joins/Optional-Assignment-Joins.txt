		Database Technologies – Optional-Assignment-Joins

Note: To solve below queries use “spj” database
*Use appropriate joins to solve following queries.

Q1. Display the Supplier name and the Quantity sold.
Ans: -
D4_56327>select sname, sum(qty) Quantity_sold  from s
 inner join sp using (`s#`) group by sname;
+-------+---------------+
| sname | Quantity_sold |
+-------+---------------+
| Smith |           900 |
| Jones |          3200 |
| Blake |           700 |
| Clark |           600 |
| Adams |          2100 |
+-------+---------------+
5 rows in set (0.00 sec)

Q2. Display the Part name and Quantity sold.
Ans: -
D4_56327>select pname, qty Quantity_sold  from p
 inner join sp using (`p#`);
+-------+---------------+
| pname | Quantity_sold |
+-------+---------------+
| Nut   |           200 |
| Nut   |           700 |
| Screw |           400 |
| Screw |           200 |
| Screw |           200 |
| Screw |           500 |
| Bolt  |           200 |
+-------+---------------+
7 rows in set (0.00 sec)

Q3. Display the Project name and Quantity sold.
Ans: -
D4_56327>select jname, qty Quantity_sold  from j
 inner join sp using (`j#`);
+---------+---------------+
| jname   | Quantity_sold |
+---------+---------------+
| Sorter  |           200 |
| Console |           700 |
| Sorter  |           400 |
| Punch   |           200 |
| Reader  |           200 |
| Punch   |           200 |
+---------+---------------+
6 rows in set (0.00 sec)

Q4. Display the Supplier name, Part name, Project name and Quantity sold.
Ans: -
D4_56327>select sname, pname, jname, qty Quantity_sold from sp 
inner join p using (`p#`) 
inner join j using (`j#`) 
inner join s using (`s#`);
+-------+-------+---------+---------------+
| sname | pname | jname   | Quantity_sold |
+-------+-------+---------+---------------+
| Jones | Screw | Sorter  |           400 |
| Smith | Nut   | Sorter  |           200 |
| Jones | Screw | Punch   |           200 |
| Adams | Bolt  | Punch   |           200 |
| Jones | Screw | Reader  |           200 |
| Smith | Nut   | Console |           700 |
+-------+-------+---------+---------------+
6 rows in set (0.00 sec)

Q5. Display the Supplier name, Supplying Parts to a Project in the same City.
Ans: -
D4_56327>select sname, pname, jname, city from s
inner join p using (city)
inner join j using (city)
where p.city =j.city;
+-------+-------+----------+--------+
| sname | pname | jname    | city   |
+-------+-------+----------+--------+
| Jones | Cam   | Sorter   | Paris  |
| Blake | Cam   | Sorter   | Paris  |
| Jones | Bolt  | Sorter   | Paris  |
| Blake | Bolt  | Sorter   | Paris  |
| Smith | Cog   | Collator | London |
| Clark | Cog   | Collator | London |
| Smith | Screw | Collator | London |
| Clark | Screw | Collator | London |
| Smith | Nut   | Collator | London |
| Clark | Nut   | Collator | London |
| Smith | Cog   | Tape     | London |
| Clark | Cog   | Tape     | London |
| Smith | Screw | Tape     | London |
| Clark | Screw | Tape     | London |
| Smith | Nut   | Tape     | London |
| Clark | Nut   | Tape     | London |
+-------+-------+----------+--------+
16 rows in set (0.00 sec)

Q6. Display the Part name that is ‘Red’ is color, and the Quantity sold.
Ans: -
D4_56327>select pname, qty Quantity_sold from p
inner join sp using (`p#`) where color= 'red';
+-------+---------------+
| pname | Quantity_sold |
+-------+---------------+
| Nut   |           200 |
| Nut   |           700 |
| Screw |           500 |
+-------+---------------+
3 rows in set (0.00 sec)

Q7. Display all the Quantity sold by Suppliers with the Status = 20.
Ans: -
D4_56327>select sname, sum(qty) Quantity_sold from s inner join sp
 using (`s#`) where status = 20 group by sname;
+-------+---------------+
| sname | Quantity_sold |
+-------+---------------+
| Smith |           900 |
| Clark |           600 |
+-------+---------------+
2 rows in set (0.00 sec)

Q8. Display all the Parts and Quantity with a Weight > 14.
Ans: -
D4_56327>select pname, sum(qty) Quantity_sold from p inner join sp
 using (`p#`) where weight > 14 group by pname;
+-------+---------------+
| pname | Quantity_sold |
+-------+---------------+
| Screw |           800 |
| Bolt  |           200 |
+-------+---------------+
2 rows in set (0.00 sec)

Q9. Display all the Project names and City, which has bought more than 500 Parts.
Ans: -
D4_56327>select jname, city, sum(qty) from j inner join sp using (`j#`)
group by jname, city having sum(qty) > 500;
+---------+--------+----------+
| jname   | city   | sum(qty) |
+---------+--------+----------+
| Sorter  | Paris  |      600 |
| Console | Athens |      700 |
+---------+--------+----------+
2 rows in set (0.00 sec)

Q10. Display all the Part names and Quantity sold that have a Weight less than 15.
Ans: -
D4_56327>select pname, qty from p inner join sp using (`p#`)
where weight < 15;
+-------+------+
| pname | qty  |
+-------+------+
| Nut   |  200 |
| Nut   |  700 |
| Screw |  500 |
+-------+------+
3 rows in set (0.00 sec)

Q11. Display all the Suppliers with the same Status as the supplier, ‘CLARK’.
Ans: -
D4_56327>select * from s where status = 
(select status from s where sname = 'clark'); 
+------+-------+--------+--------+
| S#   | Sname | Status | City   |
+------+-------+--------+--------+
| S1   | Smith |     20 | London |
| S4   | Clark |     20 | London |
+------+-------+--------+--------+
2 rows in set (0.00 sec)

Q12. Display all the Employees in the same department as the employee ‘MILLER’.(classwork database)
Ans: -
D4_56327>select * from employee where deptno = 
(select deptno from employee where ename = 'miller');
+-------+--------+-----------+------+------------+------+------+--------+
| empno | ename  | job       | mgr  | hire       | sal  | comm | deptno |
+-------+--------+-----------+------+------------+------+------+--------+
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300 | NULL |     10 |
+-------+--------+-----------+------+------------+------+------+--------+
3 rows in set (0.00 sec)

Q13. Display all the Parts which have more Weight than all the Red parts.
Ans: -
D4_56327>select * from p where weight > all (select weight 
from p where color = 'red');

Q14. Display all the Projects going on in the same city as the project ‘TAPE’.
Ans: -
D4_56327>select jname, city from j where city = (select city 
from j where jname = 'tape');
+----------+--------+
| jname    | city   |
+----------+--------+
| Collator | London |
| Tape     | London |
+----------+--------+
2 rows in set (0.00 sec)

Q15. Display all the Parts with Weight less than all the Green parts.
Ans: -
D4_56327>select * from p where weight < all (select weight FROM
p where color = 'green'); 
+------+-------+-------+--------+--------+
| P#   | Pname | Color | Weight | CITY   |
+------+-------+-------+--------+--------+
| P1   | Nut   | Red   |     12 | London |
| P4   | Screw | Red   |     14 | London |
| P5   | Cam   | Blue  |     12 | Paris  |
+------+-------+-------+--------+--------+
3 rows in set (0.00 sec)

Q16. Display the name of the Supplier who has sold the maximum Quantity (in one sale).
Ans: -
D4_56327>select sname, max(qty) from s inner join sp using (`s#`)
group by sname order by max(qty) desc;
+-------+----------+
| sname | max(qty) |
+-------+----------+
| Jones |      800 |
| Smith |      700 |
| Blake |      500 |
| Adams |      500 |
| Clark |      300 |
+-------+----------+
5 rows in set (0.00 sec)

Q17. Display the name of the Employee with the minimum Salary.
Ans: -
D4_56327>select * from employee order by salary desc;

Q18. Display the name of the Supplier who has sold the maximum overall Quantity (sum of Sales).
Ans: -
D4_56327>select sname, sum(qty) from s inner join sp using (`s#`)
group by sname order by sum(qty) desc;