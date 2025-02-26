Database Technologies – Assignment 7

Note: To solve below queries use “sales” database
*Use sub-query to solve following problems.
Q1. Write a query that uses a subquery to obtain all orders for the customer named Cisneros. Assume you do not know his customer number ( cnum ).
Ans:-
D4_56327>select *, cname from orders WHERE cnum = (select cnum FROM customers where cname = 'cisneros');
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3001 |   18.69 | 1990-10-03 | 2008 | 1007 |
| 3006 | 1098.16 | 1990-10-03 | 2008 | 1007 |
+------+---------+------------+------+------+
2 rows in set (0.04 sec)

Q2. Write a query that produces the names and ratings of all customers who have above average(amt) orders.
Ans:-
D4_56327>select cname, rating from customers where cnum in (select cnum from orders WHERE amt > (select avg(amt) from orders));
+---------+--------+
| cname   | rating |
+---------+--------+
| Liu     |    200 |
| Clemens |    100 |
+---------+--------+
2 rows in set (0.04 sec)

Q3. Write a query that selects the total amount in orders for each salesperson for whom this total is greater than the  amount of the largest order in the table.
Ans:-
D4_56327>select sum(amt) from orders group by snum having sum(amt) > (select max(amt) from orders);
+----------+
| sum(amt) |
+----------+
| 15382.07 |
+----------+
1 row in set (0.00 sec)

Q4. Write a query that selects all customers whose ratings are equal to or greater than ANY of ‘Serres’.
Ans:-
D4_56327>select * from customers where rating >= any (select rating from customers where  snum in (select snum from salespeople where (sname = 'serres')));
+------+----------+----------+--------+------+
| cnum | cname    | city     | rating | snum |
+------+----------+----------+--------+------+
| 2002 | Giovanni | Rome     |    200 | 1003 |
| 2003 | Liu      | San Jose |    200 | 1002 |
| 2004 | Grass    | Berlin   |    300 | 1002 |
| 2008 | Cisneros | San Jose |    300 | 1007 |
+------+----------+----------+--------+------+
4 rows in set (0.09 sec)

Q5. Write a query that will find all salespeople who have no customers located in their city.
Ans:-
D4_56327>select * from salespeople where (snum, city) not in (select snum, city from customers);
+------+---------+-----------+------+
| snum | sname   | city      | comm |
+------+---------+-----------+------+
| 1004 | Motika  | London    | 0.11 |
| 1007 | Rifkin  | Barcelona | 0.15 |
| 1003 | Axelrod | New York  | 0.10 |
+------+---------+-----------+------+
3 rows in set (0.04 sec)
 
Q6. Write a query that selects all orders for amounts greater than any for the customers in London.
Ans:-
D4_56327>select * from orders where amt > any (select amt from orders where cnum in (select cnum from customers where city = 'london'));
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3002 | 1900.10 | 1990-10-03 | 2007 | 1004 |
| 3005 | 5160.45 | 1990-10-03 | 2003 | 1002 |
| 3006 | 1098.16 | 1990-10-03 | 2008 | 1007 |
| 3009 | 1713.23 | 1990-10-04 | 2002 | 1003 |
| 3008 | 4723.00 | 1990-10-04 | 2006 | 1001 |
| 3011 | 9891.88 | 1990-10-04 | 2006 | 1001 |
+------+---------+------------+------+------+
6 rows in set (0.00 sec)

Q7. Extract all the orders of Motika.
Ans:-
D4_56327>select * from orders where snum = (select snum from salespeople where sname = 'motika');
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3002 | 1900.10 | 1990-10-03 | 2007 | 1004 |
+------+---------+------------+------+------+
1 row in set (0.01 sec)

Q8. Find all the order attribute to salespeople servicing customers in London.
Ans:-
D4_56327> select * from orders where cnum in (select cnum from customers where city ='london'); 
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3003 |  767.19 | 1990-10-03 | 2001 | 1001 |
| 3008 | 4723.00 | 1990-10-04 | 2006 | 1001 |
| 3011 | 9891.88 | 1990-10-04 | 2006 | 1001 |
+------+---------+------------+------+------+
3 rows in set (0.00 sec)

Q9. Find names and numbers of all salesperson who have more than one customer.
Ans:-
D4_56327>select sname, snum from salespeople s where 1 < (select count(c.cnum) from customers c where c.snum = s.snum);
+--------+------+
| sname  | snum |
+--------+------+
| Peel   | 1001 |
| Serres | 1002 |
+--------+------+
2 rows in set (0.00 sec)

Q10. Find salespeople number, name and city who have  multiple customers.
Ans:-
D4_56327>select snum, sname, city from salespeople where snum in (select snum from customers c1 where exists (select * from customers c2 where c2.snum = c1.snum and c2.cname <> c1.cname)); 
+------+--------+----------+
| snum | sname  | city     |
+------+--------+----------+
| 1001 | Peel   | London   |
| 1002 | Serres | San Jose |
+------+--------+----------+
2 rows in set (0.00 sec)

Q11. Select customers who have a greater rating than any other customer in Rome.
Ans:-
D4_56327>select * from customers c1 where c1.rating > any (select c2.rating from customers c2 where city = 'rome');
+------+----------+----------+--------+------+
| cnum | cname    | city     | rating | snum |
+------+----------+----------+--------+------+
| 2002 | Giovanni | Rome     |    200 | 1003 |
| 2003 | Liu      | San Jose |    200 | 1002 |
| 2004 | Grass    | Berlin   |    300 | 1002 |
| 2008 | Cisneros | San Jose |    300 | 1007 |
+------+----------+----------+--------+------+
4 rows in set (0.00 sec)

Q12. Select all orders that had amounts that were greater that atleast one of the orders from ‘1990-10-04’.
Ans:-
D4_56327>select * from orders where amt > any(select amt from orders where odate = '1990-10-04');
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3003 |  767.19 | 1990-10-03 | 2001 | 1001 |
| 3002 | 1900.10 | 1990-10-03 | 2007 | 1004 |
| 3005 | 5160.45 | 1990-10-03 | 2003 | 1002 |
| 3006 | 1098.16 | 1990-10-03 | 2008 | 1007 |
| 3009 | 1713.23 | 1990-10-04 | 2002 | 1003 |
| 3008 | 4723.00 | 1990-10-04 | 2006 | 1001 |
| 3010 |  309.95 | 1990-10-04 | 2004 | 1002 |
| 3011 | 9891.88 | 1990-10-04 | 2006 | 1001 |
+------+---------+------------+------+------+
8 rows in set (0.00 sec)

Q13. Find all orders with amounts smaller than any amount for a customer in San Jose.
Ans:-
D4_56327>select * from orders o1 where o1.amt < any (select o2.amt from orders o2 where o2.cnum = any (select c.cnum from customers c where c.city = 'san jose'));
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3001 |   18.69 | 1990-10-03 | 2008 | 1007 |
| 3003 |  767.19 | 1990-10-03 | 2001 | 1001 |
| 3002 | 1900.10 | 1990-10-03 | 2007 | 1004 |
| 3006 | 1098.16 | 1990-10-03 | 2008 | 1007 |
| 3009 | 1713.23 | 1990-10-04 | 2002 | 1003 |
| 3007 |   75.75 | 1990-10-04 | 2004 | 1002 |
| 3008 | 4723.00 | 1990-10-04 | 2006 | 1001 |
| 3010 |  309.95 | 1990-10-04 | 2004 | 1002 |
+------+---------+------------+------+------+
8 rows in set (0.00 sec)

Q14. Select those customers whose rating are higher than every customer in Paris.
Ans:-
D4_56327>select * from customers c1 where c1.rating > all (select c2.rating from customers c2 where c2.city = 'paris');
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
7 rows in set (0.00 sec)