Database Technologies – Assignment 9

Note: To solve below queries use “sales” database
Create appropriate indexes to solve following problems.
Q1. Create an index that will enable a user to pull orders for ‘1990-10-03’ out of the Orders table quickly.
Ans: -
D4_56327>CREATE index i_orders_odate on orders(odate);

explain format=json
select * from orders where odate = '1990-10-03';
	without index = "query_cost": "1.25"
	with index = "query_cost": "1.00"

Q2. If the Orders table has already been created, how can you force the onum field to be unique (assume all current values are unique)?
Ans: -
D4_56327>CREATE UNIQUE INDEX iu_orders_onum on orders(onum);

describe orders;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| onum  | int          | YES  | UNI | NULL    |       |
| amt   | decimal(7,2) | YES  |     | NULL    |       |
| odate | date         | YES  | MUL | NULL    |       |
| cnum  | int          | YES  |     | NULL    |       |
| snum  | int          | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
5 rows in set (0.11 sec)

Q3. Create an index that would permit salesperson to retrieve his orders.
Ans: -
D4_56327>CREATE INDEX ic_orders on orders (onum, snum);

explain format = json
select * from orders where onum = 3007 and snum = 1002;
	without index = "query_cost": "1.25"
	with index = "query_cost": "0.35"


Q4. Create an index to speed up searching order on a given date by given customer.
Ans: -
D4_56327>create INDEX ic_orders_date_cnum on orders (odate,cnum);

explain format = json
select * from orders where cnum = 2006 and odate = '1990-10-04';
	without index = "query_cost": "1.25"
	with index = "query_cost": "0.70"
 
Note: use “sales” database to solve below queries
Implement following constraints as given in question.
Q5. Write a SQL statement to add a primary key for the columns SNUM in the SALESPEOPLE table.
Ans: -
D4_56327>drop table if EXISTS salespeople;

create table salespeople (snum int primary key, sname VARCHAR(10), city varchar(10), comm decimal(3,2));
insert into salespeople VALUES ( 1001 , 'Peel'    , 'London'    , 0.12);
insert into salespeople VALUES ( 1002 , 'Serres'  , 'San Jose'  , 0.13);
insert into salespeople VALUES ( 1004 , 'Motika'  , 'London'    , 0.11);
insert into salespeople VALUES ( 1007 , 'Rifkin'  , 'Barcelona' , 0.15);
insert into salespeople VALUES ( 1003 , 'Axelrod' , 'New York'  , 0.10);

describe salespeople;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| snum  | int          | NO   | PRI | NULL    |       |
| sname | varchar(10)  | YES  |     | NULL    |       |
| city  | varchar(10)  | YES  |     | NULL    |       |
| comm  | decimal(3,2) | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
4 rows in set (0.12 sec)

Q6. Write a SQL statement to add a primary key for the columns CNUM in the CUSTOMERS table.
Ans: -
D4_56327>drop table if exists customers;

create table customers (cnum int primary key, cname varchar(10), city varchar(10), rating int, snum int );
insert into customers VALUES (2001 , 'Hoffman'  , 'London'   ,    100 , 1001);
insert into customers VALUES (2002 , 'Giovanni' , 'Rome'     ,    200 , 1003);
insert into customers VALUES (2003 , 'Liu'      , 'San Jose' ,    200 , 1002);
insert into customers VALUES (2004 , 'Grass'    , 'Berlin'  ,    300 , 1002);
insert into customers VALUES (2006 , 'Clemens'  , 'London'   ,    100 , 1001);
insert into customers VALUES (2008 , 'Cisneros' , 'San Jose' ,    300 , 1007);
insert into customers VALUES (2007 , 'Pereira'  , 'Rome'     ,    100 , 1004);

describe customers;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| cnum   | int         | NO   | PRI | NULL    |       |
| cname  | varchar(10) | YES  |     | NULL    |       |
| city   | varchar(10) | YES  |     | NULL    |       |
| rating | int         | YES  |     | NULL    |       |
| snum   | int         | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

Q7. Create DEPT table with deptno as Primary Key.
Ans: -
D4_56327>create table dept (deptno int primary key, dept_name varchar(10));
insert into dept values (10, 'admin');
insert into dept values (20, 'dev');
insert into dept values (30, 'testing');
insert into dept values (40, 'hr');
insert into dept values (50, 'sales');

select * from dept;
+--------+-----------+
| deptno | dept_name |
+--------+-----------+
|     10 | admin     |
|     20 | dev       |
|     30 | testing   |
|     40 | hr        |
|     50 | sales     |
+--------+-----------+
5 rows in set (0.00 sec)

describe dept;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| deptno    | int         | NO   | PRI | NULL    |       |
| dept_name | varchar(10) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.10 sec)