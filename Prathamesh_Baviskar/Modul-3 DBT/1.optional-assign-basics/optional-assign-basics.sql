		Database Technologies – Optional Assignment – Basics

Solve the following assignments on Northwind database.
Q1. Write a query to get Product name and quantity/unit.
Ans: -
D4_56327>SELECT productname, quantityperunit FROM products;
+----------------------------------+----------------------+
| productname                      | quantityperunit      |
+----------------------------------+----------------------+
| Chai                             | 10 boxes x 20 bags   |
| Chang                            | 24 - 12 oz bottles   |
| Aniseed Syrup                    | 12 - 550 ml bottles  |
| Chef Anton''s Cajun Seasoning    | 48 - 6 oz jars       |
| Chef Anton''s Gumbo Mix          | 36 boxes             |
| Rhnbru Klosterbier               | 24 - 0.5 l bottles   |
| Lakkalikri                       | 500 ml               |
| Original Frankfurter grne Soe    | 12 boxes             |
+----------------------------------+----------------------+
77 rows in set (0.00 sec)

Q2. Write a query to get current Product list (Product ID and name).
Ans: -
D4_56327>SELECT productid, productname FROM products; 
+-----------+----------------------------------+
| productid | productname                      |
+-----------+----------------------------------+
|        17 | Alice Mutton                     |
|         1 | Chai                             |
|         2 | Chang                            |
|        62 | Tarte au sucre                   |
|        19 | Teatime Chocolate Biscuits       |
|        29 | Thringer Rostbratwurst           |
|        14 | Tofu                             |
|        54 | Tourtire                         |
|        23 | Tunnbrd                          |
|        47 | Zaanse koeken                    |
+-----------+----------------------------------+
77 rows in set (0.04 sec)

Q3. Write a query to get Product list (id, name, unit price) where current products cost less than $20.
Ans: -
D4_56327>SELECT productid, productname, unitprice FROM products WHERE unitprice < 20;
+-----------+---------------------------------+-----------+
| productid | productname                     | unitprice |
+-----------+---------------------------------+-----------+
|         1 | Chai                            |   18.0000 |
|         2 | Chang                           |   19.0000 |
|         3 | Aniseed Syrup                   |   10.0000 |
|        76 | Lakkalikri                      |   18.0000 |
|        77 | Original Frankfurter grne Soe   |   13.0000 |
+-----------+---------------------------------+-----------+
39 rows in set (0.00 sec)

Q4. Write a query to get Product list (id, name, unit price) where products cost between $15 and $25.
Ans: -
D4_56327>SELECT productid, productname, unitprice FROM products WHERE unitprice BETWEEN 15 AND 25;
+-----------+----------------------------------+-----------+
| productid | productname                      | unitprice |
+-----------+----------------------------------+-----------+
|         1 | Chai                             |   18.0000 |
|         2 | Chang                            |   19.0000 |
|         4 | Chef Anton''s Cajun Seasoning    |   22.0000 |
|        70 | Outback Lager                    |   15.0000 |
|        71 | Flotemysost                      |   21.5000 |
|        73 | Rd Kaviar                        |   15.0000 |
|        76 | Lakkalikri                       |   18.0000 |
+-----------+----------------------------------+-----------+
25 rows in set (0.00 sec)

Q5. Write a query to get CategoryName and Description from the Categories table.
Ans: -
D4_56327>SELECT categoryname, description FROM categories;
+----------------+------------------------------------------------------------+
| categoryname   | description                                                |
+----------------+------------------------------------------------------------+
| Beverages      | Soft drinks, coffees, teas, beers, and ales                |
| Condiments     | Sweet and savory sauces, relishes, spreads, and seasonings |
| Confections    | Desserts, candies, and sweet breads                        |
| Dairy Products | Cheeses                                                    |
| Grains/Cereals | Breads, crackers, pasta, and cereal                        |
| Meat/Poultry   | Prepared meats                                             |
| Produce        | Dried fruit and bean curd                                  |
| Seafood        | Seaweed and fish                                           |
+----------------+------------------------------------------------------------+
8 rows in set (0.00 sec)

Q6. Write a query to get ContactName, CompanyName, ContactTitle and Phone from the Customers table.
Ans: -
D4_56327>SELECT contactname, companyname, contacttitle, phone FROM customers;
+-------------------------+--------------------------------------+--------------------------------+-------------------+
| contactname             | companyname                          | contacttitle                   | phone             |
+-------------------------+--------------------------------------+--------------------------------+-------------------+
| Maria Anders            | Alfreds Futterkiste                  | Sales Representative           | 030-0074321       |
| Karl Jablonski          | White Clover Markets                 | Owner                          | (206) 555-4112    |
| Matti Karttunen         | Wilman Kala                          | Owner/Marketing Assistant      | 90-224 8858       |
| Zbyszek Piestrzeniewicz | Wolski  Zajazd                       | Owner                          | (26) 642-7012     |
+-------------------------+--------------------------------------+--------------------------------+-------------------+
93 rows in set (0.00 sec)

Q7. Write a query to get EmployeeID, Title, FirstName, LastName, and Region from the Employees table.
Ans: -
D4_56327>SELECT EmployeeID, Title, FirstName, LastName, Region FROM employees;
+------------+--------------------------+-----------+-----------+--------+
| EmployeeID | Title                    | FirstName | LastName  | Region |
+------------+--------------------------+-----------+-----------+--------+
|          1 | Sales Representative     | Nancy     | Davolio   | WA     |
|          2 | Vice President, Sales    | Andrew    | Fuller    | WA     |
|          3 | Sales Representative     | Janet     | Leverling | WA     |
|          4 | Sales Representative     | Margaret  | Peacock   | WA     |
|          5 | Sales Manager            | Steven    | Buchanan  | NULL   |
|          6 | Sales Representative     | Michael   | Suyama    | NULL   |
|          7 | Sales Representative     | Robert    | King      | NULL   |
|          8 | Inside Sales Coordinator | Laura     | Callahan  | WA     |
|          9 | Sales Representative     | Anne      | Dodsworth | NULL   |
+------------+--------------------------+-----------+-----------+--------+
9 rows in set (0.00 sec)

Q8. Write a query to get RegionID and RegionDescription from the Region table.
Ans: -
D4_56327>SELECT RegionID, RegionDescription FROM region;
+----------+----------------------------------------------------+
| RegionID | RegionDescription                                  |
+----------+----------------------------------------------------+
|        1 | Eastern                                            |
|        2 | Westerns                                           |
|        3 | Northern                                           |
|        4 | Southern                                           |
+----------+----------------------------------------------------+
4 rows in set (0.14 sec)

Q9. Write a query to get CompanyName, Fax, Phone and HomePage from the Suppliers table.
Ans: -
D4_56327>SELECT CompanyName, Fax, Phone, HomePage FROM suppliers;
+----------------------------------------+-----------------+-----------------+------------------------------------------------------------------------------------------------+
| CompanyName                            | Fax             | Phone           | HomePage                                                                                       |
+----------------------------------------+-----------------+-----------------+------------------------------------------------------------------------------------------------+
| Exotic Liquids                         | NULL            | (171) 555-2222  | NULL                                                                                           |
| New Orleans Cajun Delights             | NULL            | (100) 555-4822  | #CAJUN.HTM#                                                                                    |
| Cooperativa de Quesos 'Las Cabras'     | NULL            | (98) 598 76 54  | NULL                                                                                           |
| Mayumi's                               | NULL            | (06) 431-7877   | Mayumi's (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/mayumi.htm#     |
| Plutzer Lebensmittelgromrkte AG        | NULL            | (069) 992755    | Plutzer (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/plutzer.htm#     |
| Formaggi Fortini s.r.l.                | (0544) 60603    | (0544) 60323    | #FORMAGGI.HTM#                                                                                 |
| G''day, Mate                           | (02) 555-4873   | (02) 555-5914   | G''day Mate (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/gdaymate.htm#|
+----------------------------------------+-----------------+-----------------+------------------------------------------------------------------------------------------------+
29 rows in set (0.12 sec)

Q10. Write a query to get CategoryName and Description from the Categories table sorted by CategoryName.
Ans: -
D4_56327>SELECT CategoryName, Description FROM categories ORDER BY CategoryName; 
+----------------+------------------------------------------------------------+
| CategoryName   | Description                                                |
+----------------+------------------------------------------------------------+
| Beverages      | Soft drinks, coffees, teas, beers, and ales                |
| Condiments     | Sweet and savory sauces, relishes, spreads, and seasonings |
| Confections    | Desserts, candies, and sweet breads                        |
| Dairy Products | Cheeses                                                    |
| Grains/Cereals | Breads, crackers, pasta, and cereal                        |
| Meat/Poultry   | Prepared meats                                             |
| Produce        | Dried fruit and bean curd                                  |
| Seafood        | Seaweed and fish                                           |
+----------------+------------------------------------------------------------+
8 rows in set (0.00 sec)

Q11. Write a query to get ContactName, CompanyName, ContactTitle, and Phone from the Customers table sorted by Phone.
Ans: -
D4_56327>SELECT ContactName, CompanyName, ContactTitle, Phone FROM customers ORDER BY phone;
+-------------------------+--------------------------------------+--------------------------------+-------------------+
| ContactName             | CompanyName                          | ContactTitle                   | Phone             |
+-------------------------+--------------------------------------+--------------------------------+-------------------+
| Valon Hoti              | IT                                   | IT                             | NULL              |
| Val2                    | IT                                   | IT                             | NULL              |
| Catherine Dewey         | Maison Dewey                         | Sales Agent                    | (02) 201 24 67    |
| Pascale Cartrain        | Suprmes dlices                       | Accounting Manager             | (071) 23 67 22 20 |
| Sergio Gutirrez         | Rancho grande                        | Sales Representative           | (1) 123-5555      |
| Peter Franken           | Frankenversand                       | Marketing Manager              | 089-0877310       |
| Michael Holz            | Richter Supermarkt                   | Sales Manager                  | 0897-034214       |
+-------------------------+--------------------------------------+--------------------------------+-------------------+
93 rows in set (0.00 sec)

Q12. Create a report showing employees first and last names and hire dates sorted from newest to oldest employee.
Ans: -
D4_56327>SELECT concat(firstname,' ',lastname) full_name, hiredate 
 FROM employees order by hiredate desc;
+------------------+---------------------+
| full_name        | hiredate            |
+------------------+---------------------+
| Anne Dodsworth   | 1994-11-15 00:00:00 |
| Laura Callahan   | 1994-03-05 00:00:00 |
| Robert King      | 1994-01-02 00:00:00 |
| Steven Buchanan  | 1993-10-17 00:00:00 |
| Michael Suyama   | 1993-10-17 00:00:00 |
| Margaret Peacock | 1993-05-03 00:00:00 |
| Andrew Fuller    | 1992-08-14 00:00:00 |
| Nancy Davolio    | 1992-05-01 00:00:00 |
| Janet Leverling  | 1992-04-01 00:00:00 |
+------------------+---------------------+
9 rows in set (0.00 sec)

Q13. Create a report showing Northwind''s orders sorted by Freight from most expensive to cheapest. Show OrderID, OrderDate, ShippedDate, CustomerID, and Freight.
Ans: -
D4_56327>SELECT OrderID, OrderDate,  ShippedDate, CustomerID,
Freight  FROM orders order by freight desc;
 830 rows in set (0.05 sec)
 
Q14. Write a query to get CompanyName, Fax, Phone, HomePage and Country from the Suppliers table sorted by Country in descending order and then by CompanyName in ascending order.
Ans: -
D4_56327>SELECT CompanyName, Fax, Phone, HomePage, Country 
FROM suppliers order by country desc, CompanyName asc;
29 rows in set (0.00 sec)

Q15. Create a list of employees showing title, first name, and last name. Sort by Title in ascending order and then by LastName in descending order.
Ans: -
D4_56327>SELECT title, firstname,lastname
FROM employees order by title asc,lastname desc;
+--------------------------+-----------+-----------+
| title                    | firstname | lastname  |
+--------------------------+-----------+-----------+
| Inside Sales Coordinator | Laura     | Callahan  |
| Sales Manager            | Steven    | Buchanan  |
| Sales Representative     | Michael   | Suyama    |
| Sales Representative     | Margaret  | Peacock   |
| Sales Representative     | Janet     | Leverling |
| Sales Representative     | Robert    | King      |
| Sales Representative     | Anne      | Dodsworth |
| Sales Representative     | Nancy     | Davolio   |
| Vice President, Sales    | Andrew    | Fuller    |
+--------------------------+-----------+-----------+
9 rows in set (0.00 sec)

Q16. Create a report showing all the company names and contact names of Northwind''s customers in Buenos Aires.
Ans: -
D4_56327>SELECT companyname, contactname FROM customers
where city = 'Buenos Aires';
+----------------------------+------------------+
| companyname                | contactname      |
+----------------------------+------------------+
| Cactus Comidas para llevar | Patricio Simpson |
| Ocano Atlntico Ltda.       | Yvonne Moncada   |
| Rancho grande              | Sergio Gutirrez  |
+----------------------------+------------------+
3 rows in set (0.07 sec)

Q17. Create a report showing the product name, unit price and quantity per unit of all products that are out of stock.
Ans: -
D4_56327>SELECT productname, unitprice, quantityperunit
FROM products where unitsinstock = 0;
+------------------------+-----------+----------------------+
| productname            | unitprice | quantityperunit      |
+------------------------+-----------+----------------------+
| Chef Anton''s Gumbo Mix |   21.3500 | 36 boxes             |
| Alice Mutton           |   39.0000 | 20 - 1 kg tins       |
| Thringer Rostbratwurst |  123.7900 | 50 bags x 30 sausgs. |
| Gorgonzola Telino      |   12.5000 | 12 - 100 g pkgs      |
| Perth Pasties          |   32.8000 | 48 pieces            |
+------------------------+-----------+----------------------+
5 rows in set (0.00 sec)

Q18. Create a report showing the order date, shipped date, customer id, and freight of all orders placed on May 19, 1997.
Ans: -
D4_56327>SELECT orderdate, shippeddate, customerid, freight
FROM orders where orderdate='1997-05-19';
+---------------------+---------------------+------------+-----------+
| orderdate           | shippeddate         | customerid | freight   |
+---------------------+---------------------+------------+-----------+
| 1997-05-19 00:00:00 | 1997-06-13 00:00:00 | QUICK      | 1007.6400 |
| 1997-05-19 00:00:00 | 1997-05-29 00:00:00 | HANAR      |   68.6500 |
+---------------------+---------------------+------------+-----------+
2 rows in set (0.07 sec)

Q19. Create a report that shows the company name, contact name and fax number of all customers that have a fax number.
Ans: -
D4_56327>SELECT companyname, contactname, fax FROM customers
where fax is not null;
69 rows in set (0.00 sec)

Q20. Create a report that shows the first and last name of all employees who do not report to anybody.
Ans: -
D4_56327>SELECT firstname, lastname, reportsto FROM employees 
where reportsto is null;
+-----------+----------+-----------+
| firstname | lastname | reportsto |
+-----------+----------+-----------+
| Andrew    | Fuller   |      NULL |
+-----------+----------+-----------+
1 row in set (0.00 sec)
