Database Technologies – Assignment 4

Note: To solve below queries use “sales” database 
Use appropriate SQL functions to solve following queries.

Q1. Write a query that counts all orders for October 3. 
Ans: -
D4_56327>select count(odate) from orders where odate = '1990-10-03';
+--------------+
| count(odate) |
+--------------+
|            5 |
+--------------+
1 row in set (0.12 sec)

Q2. Write a query that counts the number of different non-NULL city values in the Customers table. 
Ans: -
D4_56327>select count(distinct(city)) from customers;
+-----------------------+
| count(distinct(city)) |
+-----------------------+
|                     4 |
+-----------------------+
1 row in set (0.04 sec)

Q3. Find average commission of salespeople in London. 
Ans: -
D4_56327>select avg(comm) from salespeople where city = 'london';
+-----------+
| avg(comm) |
+-----------+
|  0.115000 |
+-----------+
1 row in set (0.00 sec)

Q4. Extract cnum, cname and city from customer table if and only if one or more of the customers in the table are located in San Jose.
Ans: -
D4_56327>select cnum, cname, city from customers where city ='san jose';
+------+----------+----------+
| cnum | cname    | city     |
+------+----------+----------+
| 2003 | Liu      | San Jose |
| 2008 | Cisneros | San Jose |
+------+----------+----------+
2 rows in set (0.00 sec)
						OR
D4_56327>select * from customers where exists(select * from customers where city = 'san jose');
+------+----------+----------+--------+------+
| cnum | cname    | city     | rating | snum |
+------+----------+----------+--------+------+
| 2001 | Hoffman  | London   |    100 | 1001 |
| 2002 | Giovanni | Rome     |    200 | 1003 |
| 2003 | Liu      | San Jose |    200 | 1002 |
| 2004 | Grass    | Berlin   |    300 | 1002 |
| 2006 | Clemens  | London   |    100 | 1001 |
| 2008 | Cisneros | San Jose |    300 | 1007 |
| 2007 | Pereira  | Rome     |    100 | 1004 |
+------+----------+----------+--------+------+
7 rows in set (0.05 sec)

Note: To solve below queries use “spj” database 
Use appropriate SQL functions to solve following queries.

Q5. Display all the Suppliers, belonging to cities starting with the letter ‘L’. 
Ans: -
D4_56327>select * from s where city like ('L%'); 
+------+-------+--------+--------+
| S#   | Sname | Status | City   |
+------+-------+--------+--------+
| S1   | Smith |     20 | London |
| S4   | Clark |     20 | London |
+------+-------+--------+--------+ 
2 rows in set (0.06 sec)       

Q6. Display all the Projects, with the third letter in JNAME as ‘n’. 
Ans: -
D4_56327>select * from j where Jname like ('__n%');
+------+---------+--------+
| J#   | Jname   | City   |
+------+---------+--------+
| J2   | Punch   | Rome   |
| J4   | Console | Athens |
+------+---------+--------+
2 rows in set (0.00 sec)

Q7. Display all the Supplier names with the initial letter capital. 
Ans: -
D4_56327>select concat(upper(substring(sname, 1,1)),lower(substring(sname,2))) from s;
+----------------------------------------------------------------+
| concat(upper(substring(sname, 1,1)),lower(substring(sname,2))) |
+----------------------------------------------------------------+
| Smith                                                          |
| Jones                                                          |
| Blake                                                          |
| Clark                                                          |
| Adams                                                          |
+----------------------------------------------------------------+
5 rows in set (0.00 sec)

Q8. Display all the Supplier names in upper case. 
Ans: -
D4_56327>select upper (sname) from s;
+---------------+
| upper (sname) |
+---------------+
| SMITH         |
| JONES         |
| BLAKE         |
| CLARK         |
| ADAMS         |
+---------------+
5 rows in set (0.07 sec)

Q9. Display all the Supplier names in lower case. 
Ans: -
D4_56327>select lower(sname) from s;
+--------------+
| lower(sname) |
+--------------+
| smith        |
| jones        |
| blake        |
| clark        |
| adams        |
+--------------+
5 rows in set (0.04 sec)

Q10. Display the Supplier names and the lengths of the names. 
Ans: -
D4_56327>select sname, length(sname) length from s;
+-------+--------+
| sname | length |
+-------+--------+
| Smith |      5 |
| Jones |      5 |
| Blake |      5 |
| Clark |      5 |
| Adams |      5 |
+-------+--------+
5 rows in set (0.00 sec)

Q11. Display the current day (e.g. Thursday). 
Ans: -
D4_56327>select dayname(now());
+----------------+
| dayname(now()) |
+----------------+
| Thursday       |
+----------------+
1 row in set (0.04 sec)

Q12. Display the minimum Status in the Supplier table. 
Ans: -
D4_56327>select min(status) from s;
+-------------+
| min(status) |
+-------------+
|          10 |
+-------------+
1 row in set (0.09 sec)

Q13. Display the maximum Weight in the Parts table. 
Ans: -
D4_56327>select max(weight) from p;
+-------------+
| max(weight) |
+-------------+
|          19 |
+-------------+
1 row in set (0.00 sec)

Q14. Display the average Weight of the Parts. 
Ans: -
D4_56327>select avg(weight) from p;
+-------------+
| avg(weight) |
+-------------+
|     15.1667 |
+-------------+
1 row in set (0.00 sec)

Q15. Display the total Quantity sold for part ‘P1’. 
Ans: -
D4_56327>select sum(qty) from sp where `p#`= 'p1';
+----------+
| sum(qty) |
+----------+
|      900 |
+----------+
1 row in set (0.00 sec)

Q16. Display all the Supplier names (with ‘la’ replaced by ‘ro’). 
Ans: -
D4_56327>select replace(sname, 'la','ro') from s;
+---------------------------+
| replace(sname, 'la','ro') |
+---------------------------+
| Smith                     |
| Jones                     |
| Broke                     |
| Crork                     |
| Adams                     |
+---------------------------+
5 rows in set (0.00 sec)

Q17. Implement the above command such that ‘l’ is replaced with ‘r’ and ‘a’ is replaced with ‘o’.
Ans: -
D4_56327>select replace(sname, 'l','r'),replace(sname, 'a','o') from s;
+-------------------------+-------------------------+
| replace(sname, 'l','r') | replace(sname, 'a','o') |
+-------------------------+-------------------------+
| Smith                   | Smith                   |
| Jones                   | Jones                   |
| Brake                   | Bloke                   |
| Crark                   | Clork                   |
| Adams                   | Adoms                   |
+-------------------------+-------------------------+
5 rows in set (0.00 sec)
						OR					
D4_56327>select replace(replace(sname, 'l','r'),'a','o') from s;
+------------------------------------------+
| replace(replace(sname, 'l','r'),'a','o') |
+------------------------------------------+
| Smith                                    |
| Jones                                    |
| Broke                                    |
| Crork                                    |
| Adoms                                    |
+------------------------------------------+
5 rows in set (0.00 sec)

Note: To solve below queries 
use “sales” database *Use Group by clause with appropriate sql functions to solve following queries. 

Q1. Write a query on the Customers table that will find the highest rating in each city. Put the output in this form: For the city (city), the highest rating is: (rating). 
Ans: -
D4_56327>select city, max(rating) from customers group by city ;
+----------+-------------+
| city     | max(rating) |
+----------+-------------+
| London   |         100 |
| Rome     |         200 |
| San Jose |         300 |
| Berlin   |         300 |
+----------+-------------+
4 rows in set (0.03 sec)

Q2. Write a query that totals the orders for each day and places the results in descending order. 
Ans: -
D4_56327>select odate,count(onum) from orders group by odate order by count(onum) desc;
+------------+-------------+
| odate      | count(onum) |
+------------+-------------+
| 1990-10-03 |           5 |
| 1990-10-04 |           5 |
+------------+-------------+
2 rows in set (0.00 sec)

Q3. Write a query that selects the total amount in orders for each salesperson for whom this total is greater than the amount of the largest order in the table. 
Ans: -
D4_56327>select snum, sum(amt) from orders group by snum having sum(amt) > max(amt);
+------+----------+
| snum | sum(amt) |
+------+----------+
| 1007 |  1116.85 |
| 1001 | 15382.07 |
| 1002 |  5546.15 |
+------+----------+
3 rows in set (0.02 sec)

Q4. Write a query that selects the highest rating in each city. 
Ans: -
D4_56327>select city, max(rating) from customers group by city;
+----------+-------------+
| city     | max(rating) |
+----------+-------------+
| London   |         100 |
| Rome     |         200 |
| San Jose |         300 |
| Berlin   |         300 |
+----------+-------------+
4 rows in set (0.00 sec)

Q5. Largest order taken by each salesperson with order value more than Rs.3000.
Ans: -
D4_56327>select snum, max(amt) from orders where amt > 3000 group by snum;
+------+----------+
| snum | max(amt) |
+------+----------+
| 1002 |  5160.45 |
| 1001 |  9891.88 |
+------+----------+
2 rows in set (0.00 sec)

Note: To solve below queries use “hr” database 
* Use Group by clause with appropriate sql functions to solve following queries. 

Q6. Display manager ID and number of employees managed by the manager. 
Ans: -
D4_56327>select manager_id, count(employee_id) from employees group by manager_id;
+------------+--------------------+
| manager_id | count(employee_id) |
+------------+--------------------+
|          0 |                  1 |
|        100 |                 14 |
|        101 |                  5 |
|        102 |                  1 |
|        103 |                  4 |
|        108 |                  5 |
|        114 |                  5 |
|        120 |                  8 |
|        121 |                  8 |
|        122 |                  8 |
|        123 |                  8 |
|        124 |                  8 |
|        145 |                  6 |
|        146 |                  6 |
|        147 |                  6 |
|        148 |                  6 |
|        149 |                  6 |
|        201 |                  1 |
|        205 |                  1 |
+------------+--------------------+
19 rows in set (0.09 sec)

Q7. Display the country ID and number of cities we have in the country. 
Ans: -
D4_56327>select country_id, count(city) from locations group by country_id;
+------------+-------------+
| country_id | count(city) |
+------------+-------------+
| " "        |           1 |
| AU         |           1 |
| BR         |           1 |
| CA         |           2 |
| CH         |           2 |
| CN         |           1 |
| DE         |           1 |
| IN         |           1 |
| IT         |           2 |
| JP         |           2 |
| NL         |           1 |
| Ox         |           1 |
| SG         |           1 |
| UK         |           2 |
| US         |           4 |
+------------+-------------+
15 rows in set (0.00 sec)

Q8. Display average salary of employees in each department who have commission percentage. 
Ans: -
D4_56327>select department_id, avg(salary) from employees where commission_pct > 0 group by department_id;
+---------------+-------------+
| department_id | avg(salary) |
+---------------+-------------+
|             0 | 7000.000000 |
|            80 | 8955.882353 |
+---------------+-------------+
2 rows in set (0.00 sec)

Q9. Display job ID, number of employees, sum of salary, and difference between highest salary and lowest salary of the employees of the job. 
Ans: -
D4_56327>select job_id, count(employee_id), sum(salary),max(salary) - min(salary) diff from employees group by job_id ;
+------------+--------------------+-------------+---------+
| job_id     | count(employee_id) | sum(salary) | diff    |
+------------+--------------------+-------------+---------+
| AC_ACCOUNT |                  1 |     8300.00 |    0.00 |
| AC_MGR     |                  1 |    12000.00 |    0.00 |
| AD_ASST    |                  1 |     4400.00 |    0.00 |
| AD_PRES    |                  1 |    24000.00 |    0.00 |
| AD_VP      |                  2 |    34000.00 |    0.00 |
| FI_ACCOUNT |                  5 |    39600.00 | 2100.00 |
| FI_MGR     |                  1 |    12000.00 |    0.00 |
| HR_REP     |                  1 |     6500.00 |    0.00 |
| IT_PROG    |                  5 |    28800.00 | 4800.00 |
| MK_MAN     |                  1 |    13000.00 |    0.00 |
| MK_REP     |                  1 |     6000.00 |    0.00 |
| PR_REP     |                  1 |    10000.00 |    0.00 |
| PU_CLERK   |                  5 |    13900.00 |  600.00 |
| PU_MAN     |                  1 |    11000.00 |    0.00 |
| SA_MAN     |                  5 |    61000.00 | 3500.00 |
| SA_REP     |                 30 |   250500.00 | 5400.00 |
| SH_CLERK   |                 20 |    64300.00 | 1700.00 |
| ST_CLERK   |                 20 |    55700.00 | 1500.00 |
| ST_MAN     |                  5 |    36400.00 | 2400.00 |
+------------+--------------------+-------------+---------+
19 rows in set (0.05 sec)

Q10. Display job ID for jobs with average salary more than 10000. 
Ans: -
D4_56327>select job_id from jobs group by job_id having avg(max_salary+min_salary) > 10000;
+------------+
| job_id     |
+------------+
| AC_ACCOUNT |
| AC_MGR     |
| AD_PRES    |
| AD_VP      |
| FI_ACCOUNT |
| FI_MGR     |
| HR_REP     |
| IT_PROG    |
| MK_MAN     |
| MK_REP     |
| PR_REP     |
| PU_MAN     |
| SA_MAN     |
| SA_REP     |
| ST_MAN     |
+------------+
15 rows in set (0.00 sec)

Q11. Display years in which more than 10 employees joined. 
Ans: -
D4_56327>SELECT YEAR(hire_date), count(employee_id) from employees group by year(hire_date) having count(employee_id) > 10;
+-----------------+--------------------+
| YEAR(hire_date) | count(employee_id) |
+-----------------+--------------------+
|            1987 |                107 |
+-----------------+--------------------+
1 row in set (0.00 sec)

Q12. Display departments in which more than five employees have commission percentage. 
Ans: -
D4_56327>select department_id from employees where commission_pct is not null group by department_id having count(commission_pct) > 5;
+---------------+
| department_id |
+---------------+
|            30 |
|            50 |
|            80 |
|           100 |
+---------------+
4 rows in set (0.00 sec)

D4_56327>select department_id from employees where commission_pct !=0 group by department_id having count(commission_pct) > 5;
+---------------+
| department_id |
+---------------+
|            80 |
+---------------+
1 row in set (0.00 sec)

Q13. Display employee ID for employees who did more than one job in the past. 
Ans: -
D4_56327>select employee_id from job_history group by employee_id having count(*)>1;
+-------------+
| employee_id |
+-------------+
|         101 |
|         176 |
|         200 |
+-------------+
3 rows in set (0.00 sec)

Q14. Display job ID of jobs that were done by more than 3 employees for more than 100 days. 
Ans: -
D4_56327>select job_id from job_history where (end_date-start_date) > 100 group by job_id having count(*)>3;
Empty set (0.00 sec)

Q15. Display department ID, year, and Number of employees joined. 
Ans: -
D4_56327>select department_id, year(hire_date), count(employee_id) from employees group by department_id, year(hire_date) order by department_id;
+---------------+-----------------+--------------------+
| department_id | year(hire_date) | count(employee_id) |
+---------------+-----------------+--------------------+
|             0 |            1987 |                  1 |
|            10 |            1987 |                  1 |
|            20 |            1987 |                  2 |
|            30 |            1987 |                  6 |
|            40 |            1987 |                  1 |
|            50 |            1987 |                 45 |
|            60 |            1987 |                  5 |
|            70 |            1987 |                  1 |
|            80 |            1987 |                 34 |
|            90 |            1987 |                  3 |
|           100 |            1987 |                  6 |
|           110 |            1987 |                  2 |
+---------------+-----------------+--------------------+
12 rows in set (0.05 sec)

Q16. Display how many employees joined in each month of the current year. 
Ans: -
D4_56327>select month(hire_date), count(employee_id) from employees group by month(hire_date);
+------------------+--------------------+
| month(hire_date) | count(employee_id) |
+------------------+--------------------+
|                6 |                 14 |
|                7 |                 31 |
|                8 |                 31 |
|                9 |                 30 |
|               10 |                  1 |
+------------------+--------------------+
5 rows in set (0.00 sec)

Q17. Display details of departments in which the maximum salary is more than 10000.
Ans: -
D4_56327>select d.department_name from departments d inner join employees e on d.department_id = e.department_id inner join jobs j on e.job_id = j.job_id where j.max_salary > 10000 group by d.department_name;
+------------------+
| department_name  |
+------------------+
| Executive        |
| Finance          |
| Accounting       |
| Sales            |
| Purchasing       |
| Marketing        |
| Public Relations |
+------------------+
7 rows in set (0.08 sec)