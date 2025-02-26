Database Technologies – Assignment 6

Note: To solve below queries use “sales” database *Use appropriate joins to solve following queries.

Q1. Write a query that lists each order number followed by the name of the customer who made the order.
Ans: -
D4_56327>select o.onum, c.cname FROM orders o 
inner join customers c on o.cnum = c.cnum;
+------+----------+
| onum | cname    |
+------+----------+
| 3001 | Cisneros |
| 3003 | Hoffman  |
| 3002 | Pereira  |
| 3005 | Liu      |
| 3006 | Cisneros |
| 3009 | Giovanni |
| 3007 | Grass    |
| 3008 | Clemens  |
| 3010 | Grass    |
| 3011 | Clemens  |
+------+----------+
10 rows in set (0.04 sec)

Q2. Write a query that gives the names of both the salesperson and the customer for each order along with the order number.
Ans: -
D4_56327>SELECT onum, sname, cname FROM orders o 
inner join customers c on o.cnum = c.cnum
inner join salespeople s on o.snum = s.snum;
+------+------------------+---------------+
| onum | sale_person_name | customer_name |
+------+------------------+---------------+
| 3003 | Peel             | Hoffman       |
| 3009 | Axelrod          | Giovanni      |
| 3005 | Serres           | Liu           |
| 3010 | Serres           | Grass         |
| 3007 | Serres           | Grass         |
| 3011 | Peel             | Clemens       |
| 3008 | Peel             | Clemens       |
| 3006 | Rifkin           | Cisneros      |
| 3001 | Rifkin           | Cisneros      |
| 3002 | Motika           | Pereira       |
+------+------------------+---------------+
10 rows in set (0.00 sec)

Q3. Write a query that produces all customers serviced by salespeople with a commission above 12%. Output the customer’s name, the salesperson’s name, and the salesperson’s rate of commission.
Ans: -
D4_56327>SELECT c.cname, s.sname, s.comm 
FROM salespeople s
inner join customers c on s.snum = c.snum
WHERE s.comm >  0.12;
+----------+--------+------+
| cname    | sname  | comm |
+----------+--------+------+
| Liu      | Serres | 0.13 |
| Grass    | Serres | 0.13 |
| Cisneros | Rifkin | 0.15 |
+----------+--------+------+
3 rows in set (0.08 sec)

Q4. Write a query that calculates the amount of the salesperson’s commission on each order by a customer with a rating above 100.
Ans: -
D4_56327>SELECT o.onum, s.sname, o.amt * s.comm FROM orders o
INNER JOIN customers c ON o.cnum = c.cnum
INNER JOIN salespeople s ON o.snum = s.snum
WHERE c.rating > 100;
+------+---------+----------------+
| onum | sname   | o.amt * s.comm |
+------+---------+----------------+
| 3010 | Serres  |        40.2935 |
| 3007 | Serres  |         9.8475 |
| 3005 | Serres  |       670.8585 |
| 3006 | Rifkin  |       164.7240 |
| 3001 | Rifkin  |         2.8035 |
| 3009 | Axelrod |       171.3230 |
+------+---------+----------------+
6 rows in set (0.00 sec)

Q5. Write a query that produces all pairs of salespeople who are living in the same city. Exclude combinations of salespeople with themselves as well as duplicate rows with the order reversed.
Ans: -
D4_56327>SELECT s.sname, p.sname, p.city FROM salespeople s
inner join salespeople p on s.city = p.city
WHERE s.snum < p.snum; 
+-------+--------+--------+
| sname | sname  | city   |
+-------+--------+--------+
| Peel  | Motika | London |
+-------+--------+--------+
1 row in set (0.00 sec)

Note: To solve below queries use “hr” database *Use appropriate joins to solve following queries.
Q6. Display department name and manager first name.
Ans: -
D4_56327>SELECT d.department_id, d.department_name, d.manager_id,
e.first_name manager_name FROM departments d 
inner join employees e on d.manager_id = e.employee_id;
+---------------+----------------------+------------+--------------+
| department_id | department_name      | manager_id | manager_name |
+---------------+----------------------+------------+--------------+
|            10 | Administration       |        200 | Jennifer     |
|            20 | Marketing            |        201 | Michael      |
|            30 | Purchasing           |        114 | Den          |
|            40 | Human Resources      |        203 | Susan        |
|            50 | Shipping             |        121 | Adam         |
|            60 | IT                   |        103 | Alexander    |
|            70 | Public Relations     |        204 | Hermann      |
|            80 | Sales                |        145 | John         |
|            90 | Executive            |        100 | Steven       |
|           100 | Finance              |        108 | Nancy        |
|           110 | Accounting           |        205 | Shelley      |        
+---------------+----------------------+------------+--------------+
11 rows in set (0.22 sec)

Q7. Display department name, manager name, and city.
Ans: -
D4_56327>SELECT d.department_name, CONCAT(e.first_name, ' ',e.last_name) 
manager_name, l.city FROM departments d 
inner join employees e on d.manager_id = e.employee_id
inner join locations l on d.location_id = l.location_id;
+------------------+-------------------+---------------------+
| department_name  | manager_name      | city                |
+------------------+-------------------+---------------------+
| Administration   | Jennifer Whalen   | Seattle             |
| Marketing        | Michael Hartstein | Toronto             |
| Purchasing       | Den Raphaely      | Seattle             |
| Human Resources  | Susan Mavris      | London              |
| Shipping         | Adam Fripp        | South San Francisco |
| IT               | Alexander Hunold  | Southlake           |
| Public Relations | Hermann Baer      | Munich              |
| Sales            | John Russell      | OX9 9ZB             |
| Executive        | Steven King       | Seattle             |
| Finance          | Nancy Greenberg   | Seattle             |
| Accounting       | Shelley Higgins   | Seattle             |
+------------------+-------------------+---------------------+
11 rows in set (0.00 sec)

Q8. Display country name, city, and department name.
Ans: -
D4_56327>SELECT c.country_name, l.city, d.department_name
FROM departments d 
inner join locations l ON d.location_id = l.location_id
inner join countries c ON l.country_id = c.country_id
ORDER by d.department_name;
+--------------------------+---------------------+----------------------+
| country_name             | city                | department_name      |
+--------------------------+---------------------+----------------------+
| United States of America | Seattle             | Accounting           |
| United States of America | Seattle             | Administration       |
| United States of America | Seattle             | Benefits             |
| United States of America | Seattle             | Construction         |
| United States of America | Seattle             | Contracting          |
| United States of America | Seattle             | Control And Credit   |
| United States of America | Seattle             | Corporate Tax        |
| United States of America | Seattle             | Executive            |
| United States of America | Seattle             | Finance              |
| United States of America | Seattle             | Government Sales     |
| United Kingdom           | London              | Human Resources      |
| United States of America | Southlake           | IT                   |
| United States of America | Seattle             | IT Helpdesk          |
| United States of America | Seattle             | IT Support           |
| United States of America | Seattle             | Manufacturing        |
| Canada                   | Toronto             | Marketing            |
| United States of America | Seattle             | NOC                  |
| United States of America | Seattle             | Operations           |
| United States of America | Seattle             | Payroll              |
| Germany                  | Munich              | Public Relations     |
| United States of America | Seattle             | Purchasing           |
| United States of America | Seattle             | Recruiting           |
| United States of America | Seattle             | Retail Sales         |
| United States of America | Seattle             | Shareholder Services |
| United States of America | South San Francisco | Shipping             |
| United States of America | Seattle             | Treasury             |
+--------------------------+---------------------+----------------------+
26 rows in set (0.00 sec)

Q9. Display job title, department name, employee last name, starting date for all jobs from 1993 to 1998.
Ans: -
D4_56327>SELECT j.job_title, d.department_name, e.last_name, jh.start_date
FROM job_history jh
inner join jobs j USING (job_id)
inner join departments d USING (department_id)
inner join employees e USING (employee_id)
WHERE jh.start_date >= '1993-01-01' AND jh.start_date <= '1998-12-31';
+--------------------------+-----------------+-----------+------------+
| job_title                | department_name | last_name | start_date |
+--------------------------+-----------------+-----------+------------+
| Programmer               | IT              | De Haan   | 1993-01-13 |
| Accounting Manager       | Accounting      | Kochhar   | 1993-10-28 |
| Marketing Representative | Marketing       | Hartstein | 1996-02-17 |
| Stock Clerk              | Shipping        | Raphaely  | 1998-03-24 |
| Sales Representative     | Sales           | Taylor    | 1998-03-24 |
| Public Accountant        | Executive       | Whalen    | 1994-07-01 |
+--------------------------+-----------------+-----------+------------+
6 rows in set (0.13 sec)

Q10. Display job title and average salary of employees. 
Ans: -
D4_56327>SELECT j.job_title, AVG(e.salary)
FROM employees e 
inner join jobs j ON e.job_id = j.job_id
GROUP BY job_title;
					OR
SELECT j.job_title, AVG(e.salary)
FROM employees e 
NATURAL join jobs j 
GROUP BY job_title;
+---------------------------------+--------------+
| job_title                       | AVG(salary)  |
+---------------------------------+--------------+
| President                       | 24000.000000 |
| Administration Vice President   | 17000.000000 |
| Programmer                      |  5760.000000 |
| Finance Manager                 | 12000.000000 |
| Accountant                      |  7920.000000 |
| Purchasing Manager              | 11000.000000 |
| Purchasing Clerk                |  2780.000000 |
| Stock Manager                   |  7280.000000 |
| Stock Clerk                     |  2785.000000 |
| Sales Manager                   | 12200.000000 |
| Sales Representative            |  8350.000000 |
| Shipping Clerk                  |  3215.000000 |
| Administration Assistant        |  4400.000000 |
| Marketing Manager               | 13000.000000 |
| Marketing Representative        |  6000.000000 |
| Human Resources Representative  |  6500.000000 |
| Public Relations Representative | 10000.000000 |
| Accounting Manager              | 12000.000000 |
| Public Accountant               |  8300.000000 |
+---------------------------------+--------------+
19 rows in set (0.06 sec)

Q11. Display job title, employee name, and the difference between maximum salary for the job and salary of the employee. 
Ans: -
D4_56327>SELECT j.job_title, concat(first_name,' ',last_name) ename,
 j.max_salary - e.salary diff FROM employees e 
 inner join jobs j on e.job_id = j.job_id
 ORDER by j.job_title;
+---------------------------------+-------------------+----------+
| job_title                       | ename             | diff     |
+---------------------------------+-------------------+----------+
| Accountant                      | Daniel Faviet     |     0.00 |
| Accountant                      | John Chen         |   800.00 |
| Accountant                      | Ismael Sciarra    |  1300.00 |
| Accountant                      | Jose Manuel Urman |  1200.00 |
| Accountant                      | Luis Popp         |  2100.00 |
| Accounting Manager              | Shelley Higgins   |  4000.00 |
| Administration Assistant        | Jennifer Whalen   |  1600.00 |
| Administration Vice President   | Neena Kochhar     | 13000.00 |
| Administration Vice President   | Lex De Haan       | 13000.00 |
| Finance Manager                 | Nancy Greenberg   |  4000.00 |
| Human Resources Representative  | Susan Mavris      |  2500.00 |
| Marketing Manager               | Michael Hartstein |  2000.00 |
| Marketing Representative        | Pat Fay           |  3000.00 |
| President                       | Steven King       | 16000.00 |
| Programmer                      | Alexander Hunold  |  1000.00 |
| Programmer                      | Bruce Ernst       |  4000.00 |
| Programmer                      | David Austin      |  5200.00 |
| Programmer                      | Valli Pataballa   |  5200.00 |
| Programmer                      | Diana Lorentz     |  5800.00 |
| Public Accountant               | William Gietz     |   700.00 |
| Public Relations Representative | Hermann Baer      |   500.00 |
| Purchasing Clerk                | Alexander Khoo    |  2400.00 |
| Purchasing Clerk                | Shelli Baida      |  2600.00 |
| Purchasing Clerk                | Sigal Tobias      |  2700.00 |
| Purchasing Clerk                | Guy Himuro        |  2900.00 |
| Purchasing Clerk                | Karen Colmenares  |  3000.00 |
| Purchasing Manager              | Den Raphaely      |  4000.00 |
| Sales Manager                   | John Russell      |  6000.00 |
| Sales Manager                   | Karen Partners    |  6500.00 |
| Sales Manager                   | Alberto Errazuriz |  8000.00 |
| Sales Manager                   | Gerald Cambrault  |  9000.00 |
| Sales Manager                   | Eleni Zlotkey     |  9500.00 |
| Sales Representative            | Peter Tucker      |  2000.00 |
| Sales Representative            | David Bernstein   |  2500.00 |
| Sales Representative            | Peter Hall        |  3000.00 |
| Sales Representative            | Christopher Olsen |  4000.00 |
| Sales Representative            | Nanette Cambrault |  4500.00 |
| Sales Representative            | Oliver Tuvault    |  5000.00 |
| Sales Representative            | Janette King      |  2000.00 |
| Sales Representative            | Patrick Sully     |  2500.00 |
| Sales Representative            | Allan McEwen      |  3000.00 |
| Sales Representative            | Lindsey Smith     |  4000.00 |
| Sales Representative            | Louise Doran      |  4500.00 |
| Sales Representative            | Sarath Sewall     |  5000.00 |
| Sales Representative            | Clara Vishney     |  1500.00 |
| Sales Representative            | Danielle Greene   |  2500.00 |
| Sales Representative            | Mattea Marvins    |  4800.00 |
| Sales Representative            | David Lee         |  5200.00 |
| Sales Representative            | Sundar Ande       |  5600.00 |
| Sales Representative            | Amit Banda        |  5800.00 |
| Sales Representative            | Lisa Ozer         |   500.00 |
| Sales Representative            | Harrison Bloom    |  2000.00 |
| Sales Representative            | Tayler Fox        |  2400.00 |
| Sales Representative            | William Smith     |  4600.00 |
| Sales Representative            | Elizabeth Bates   |  4700.00 |
| Sales Representative            | Sundita Kumar     |  5900.00 |
| Sales Representative            | Ellen Abel        |  1000.00 |
| Sales Representative            | Alyssa Hutton     |  3200.00 |
| Sales Representative            | Jonathon Taylor   |  3400.00 |
| Sales Representative            | Jack Livingston   |  3600.00 |
| Sales Representative            | Kimberely Grant   |  5000.00 |
| Sales Representative            | Charles Johnson   |  5800.00 |
| Shipping Clerk                  | Winston Taylor    |  2300.00 |
| Shipping Clerk                  | Jean Fleaur       |  2400.00 |
| Shipping Clerk                  | Martha Sullivan   |  3000.00 |
| Shipping Clerk                  | Girard Geoni      |  2700.00 |
| Shipping Clerk                  | Nandita Sarchand  |  1300.00 |
| Shipping Clerk                  | Alexis Bull       |  1400.00 |
| Shipping Clerk                  | Julia Dellinger   |  2100.00 |
| Shipping Clerk                  | Anthony Cabrio    |  2500.00 |
| Shipping Clerk                  | Kelly Chung       |  1700.00 |
| Shipping Clerk                  | Jennifer Dilly    |  1900.00 |
| Shipping Clerk                  | Timothy Gates     |  2600.00 |
| Shipping Clerk                  | Randall Perkins   |  3000.00 |
| Shipping Clerk                  | Sarah Bell        |  1500.00 |
| Shipping Clerk                  | Britney Everett   |  1600.00 |
| Shipping Clerk                  | Samuel McCain     |  2300.00 |
| Shipping Clerk                  | Vance Jones       |  2700.00 |
| Shipping Clerk                  | Alana Walsh       |  2400.00 |
| Shipping Clerk                  | Kevin Feeney      |  2500.00 |
| Shipping Clerk                  | Donald OConnell   |  2900.00 |
| Shipping Clerk                  | Douglas Grant     |  2900.00 |
| Stock Clerk                     | Julia Nayer       |  1800.00 |
| Stock Clerk                     | Irene Mikkilineni |  2300.00 |
| Stock Clerk                     | James Landry      |  2600.00 |
| Stock Clerk                     | Steven Markle     |  2800.00 |
| Stock Clerk                     | Laura Bissot      |  1700.00 |
| Stock Clerk                     | Mozhe Atkinson    |  2200.00 |
| Stock Clerk                     | James Marlow      |  2500.00 |
| Stock Clerk                     | TJ Olson          |  2900.00 |
| Stock Clerk                     | Jason Mallin      |  1700.00 |
| Stock Clerk                     | Michael Rogers    |  2100.00 |
| Stock Clerk                     | Ki Gee            |  2600.00 |
| Stock Clerk                     | Hazel Philtanker  |  2800.00 |
| Stock Clerk                     | Renske Ladwig     |  1400.00 |
| Stock Clerk                     | Stephen Stiles    |  1800.00 |
| Stock Clerk                     | John Seo          |  2300.00 |
| Stock Clerk                     | Joshua Patel      |  2500.00 |
| Stock Clerk                     | Trenna Rajs       |  1500.00 |
| Stock Clerk                     | Curtis Davies     |  1900.00 |
| Stock Clerk                     | Randall Matos     |  2400.00 |
| Stock Clerk                     | Peter Vargas      |  2500.00 |
| Stock Manager                   | Matthew Weiss     |   500.00 |
| Stock Manager                   | Adam Fripp        |   300.00 |
| Stock Manager                   | Payam Kaufling    |   600.00 |
| Stock Manager                   | Shanta Vollman    |  2000.00 |
| Stock Manager                   | Kevin Mourgos     |  2700.00 |
+---------------------------------+-------------------+----------+
107 rows in set (0.00 sec)

Q12. Display last name, job title of employees who have commission percentage and belongs to department 30. 
Ans: -
D4_56327>SELECT e.last_name, j.job_title FROM employees e 
left join jobs j USING (job_id)
WHERE commission_pct is not null AND Department_id = 30;
+------------+--------------------+
| last_name  | job_title          |
+------------+--------------------+
| Raphaely   | Purchasing Manager |
| Khoo       | Purchasing Clerk   |
| Baida      | Purchasing Clerk   |
| Tobias     | Purchasing Clerk   |
| Himuro     | Purchasing Clerk   |
| Colmenares | Purchasing Clerk   |
+------------+--------------------+
6 rows in set (0.00 sec)

Q13. Display details of jobs that were done by any employee who is currently drawing more than 15000 of salary. 
Ans: -
D4_56327>SELECT CONCAT(First_name,' ',last_name) ename, employee_id, j.*
FROM  jobs j
inner join employees e on j.job_id = e.job_id
WHERE e.salary > 15000;
+---------------+-------------+---------+-------------------------------+------------+------------+
| ename         | employee_id | JOB_ID  | JOB_TITLE                     | MIN_SALARY | MAX_SALARY |
+---------------+-------------+---------+-------------------------------+------------+------------+
| Steven King   |         100 | AD_PRES | President                     |      20000 |      40000 |
| Neena Kochhar |         101 | AD_VP   | Administration Vice President |      15000 |      30000 |
| Lex De Haan   |         102 | AD_VP   | Administration Vice President |      15000 |      30000 |
+---------------+-------------+---------+-------------------------------+------------+------------+
3 rows in set (0.00 sec)

Q14. Display department name, manager name, and salary of the manager For all managers whose experience is more than 5 years. 
Ans: -
D4_56327>SELECT d.department_name, CONCAT(first_name,' ',last_name) manager_name, 
salary, (year(end_date) - year(start_date)) experience
FROM employees e 
inner join departments d ON e.employee_id = d.manager_id
inner join job_history jh ON d.manager_id = jh.employee_id
WHERE (year(end_date) - year(start_date)) > 5;
							OR
SELECT d.department_name, CONCAT(first_name,' ',last_name) manager_name, 
salary, (TIMESTAMPdiff (year, start_date, end_date)) experience
FROM employees e 
inner join departments d ON e.employee_id = d.manager_id
inner join job_history jh ON d.manager_id = jh.employee_id
WHERE (TIMESTAMPdiff (year, start_date, end_date)) > 5;

+-----------------+-----------------+---------+------------+
| department_name | manager_name    | salary  | experience |
+-----------------+-----------------+---------+------------+
| Administration  | Jennifer Whalen | 4400.00 |          6 |
+-----------------+-----------------+---------+------------+
1 row in set (0.00 sec)

Q15. Display employee name if the employee joined before his manager. 
Ans: -
D4_56327>SELECT DISTINCT e.first_name
FROM employees e 
inner join employees m ON e.manager_id = m.employee_id 
AND e.hire_date < m.hire_date;
Empty set (0.00 sec)

Q16. Display employee name, job title for the jobs employee did in the past where the job was done less than six months. 
Ans: -
D4_56327>SELECT CONCAT(first_name,' ',last_name) Employee_name, job_title
FROM job_history jh 
inner join employees e ON jh.employee_id = e.employee_id
inner join jobs j ON jh.job_id = j.job_id
WHERE TIMESTAMPdiff(MONTH,start_date,end_date) < 6;
Empty set (0.00 sec)

Q17. Display employee name and country in which he is working. 
Ans: -
D4_56327>SELECT CONCAT(first_name,' ',last_name) Employee_name, country_name
FROM employees e 
inner join departments d on e.department_id = d.department_id
inner join locations l ON d.location_id = l.location_id
inner join countries c ON l.country_id = c.country_id;
+-------------------+--------------------------+
| Employee_name     | country_name             |
+-------------------+--------------------------+
| Jennifer Whalen   | United States of America |
| Michael Hartstein | Canada                   |
| Pat Fay           | Canada                   |
| Den Raphaely      | United States of America |
| Alexander Khoo    | United States of America |
| Shelli Baida      | United States of America |
| Sigal Tobias      | United States of America |
| Guy Himuro        | United States of America |
| Karen Colmenares  | United States of America |
| Susan Mavris      | United Kingdom           |
| Matthew Weiss     | United States of America |
| Adam Fripp        | United States of America |
| Payam Kaufling    | United States of America |
| Shanta Vollman    | United States of America |
| Kevin Mourgos     | United States of America |
| Julia Nayer       | United States of America |
| Irene Mikkilineni | United States of America |
| James Landry      | United States of America |
| Steven Markle     | United States of America |
| Laura Bissot      | United States of America |
| Mozhe Atkinson    | United States of America |
| James Marlow      | United States of America |
| TJ Olson          | United States of America |
| Jason Mallin      | United States of America |
| Michael Rogers    | United States of America |
| Ki Gee            | United States of America |
| Hazel Philtanker  | United States of America |
| Renske Ladwig     | United States of America |
| Stephen Stiles    | United States of America |
| John Seo          | United States of America |
| Joshua Patel      | United States of America |
| Trenna Rajs       | United States of America |
| Curtis Davies     | United States of America |
| Randall Matos     | United States of America |
| Peter Vargas      | United States of America |
| Winston Taylor    | United States of America |
| Jean Fleaur       | United States of America |
| Martha Sullivan   | United States of America |
| Girard Geoni      | United States of America |
| Nandita Sarchand  | United States of America |
| Alexis Bull       | United States of America |
| Julia Dellinger   | United States of America |
| Anthony Cabrio    | United States of America |
| Kelly Chung       | United States of America |
| Jennifer Dilly    | United States of America |
| Timothy Gates     | United States of America |
| Randall Perkins   | United States of America |
| Sarah Bell        | United States of America |
| Britney Everett   | United States of America |
| Samuel McCain     | United States of America |
| Vance Jones       | United States of America |
| Alana Walsh       | United States of America |
| Kevin Feeney      | United States of America |
| Donald OConnell   | United States of America |
| Douglas Grant     | United States of America |
| Alexander Hunold  | United States of America |
| Bruce Ernst       | United States of America |
| David Austin      | United States of America |
| Valli Pataballa   | United States of America |
| Diana Lorentz     | United States of America |
| Hermann Baer      | Germany                  |
| Steven King       | United States of America |
| Neena Kochhar     | United States of America |
| Lex De Haan       | United States of America |
| Nancy Greenberg   | United States of America |
| Daniel Faviet     | United States of America |
| John Chen         | United States of America |
| Ismael Sciarra    | United States of America |
| Jose Manuel Urman | United States of America |
| Luis Popp         | United States of America |
| Shelley Higgins   | United States of America |
| William Gietz     | United States of America |
+-------------------+--------------------------+
72 rows in set (0.15 sec)

Q18. Display department name, average salary and number of employees with commission within the department. 
Ans: -
D4_56327>SELECT department_name, ROUND(AVG(salary),2), COUNT(commission_pct)
FROM departments d 
inner join employees e USING (department_id)
WHERE e.commission_pct != 0
GROUP BY department_name
ORDER BY department_name;
+------------------+----------------------+-----------------------+
| department_name  | ROUND(AVG(salary),2) | COUNT(commission_pct) |
+------------------+----------------------+-----------------------+
| Accounting       |             10150.00 |                     2 |
| Administration   |              4400.00 |                     1 |
| Executive        |             19333.33 |                     3 |
| Finance          |              8600.00 |                     6 |
| Human Resources  |              6500.00 |                     1 |
| IT               |              5760.00 |                     5 |
| Marketing        |              9500.00 |                     2 |
| Public Relations |             10000.00 |                     1 |
| Purchasing       |              4150.00 |                     6 |
| Sales            |              8955.88 |                    34 |
| Shipping         |              3475.56 |                    45 |
+------------------+----------------------+-----------------------+
11 rows in set (0.07 sec)

Q19. Display the month in which more than 5 employees joined 
in any department located in Sydney. 
Ans: -
D4_56327>SELECT date_format(hire_date,'%y-%m-%d') 
FROM employees e 
inner join departments d ON e.department_id = d.department_id
inner join locations l ON d.location_id = l.location_id
WHERE city = 'sydney'
GROUP BY date_format(hire_date,'%y-%m-%d') 
HAVING count(*) > 5;
Empty set (0.00 sec)

Q20. Display employee name, job title, start date, and end date
 of past jobs of all employees with commission percentage null.
Ans: -
D4_56327>SELECT CONCAT(e.first_name,' ',e.last_name) employee_name, job_title, jh.start_date, jh.end_date
FROM employees e 
inner join job_history jh USING (employee_id)
inner join jobs j ON jh.job_id = j.job_id
where commission_pct IS NULL;
Empty set (0.00 sec)

+----------------+--------------------------+------------------+
| Oracle TO_CHAR |		Description	        |MySQL DATE_FORMAT |
+----------------+--------------------------+------------------+
| YYYY			 |	4-digit year			|		%	       |
| YY			 |	2-digit year			|		%y   	   |
| RRRR			 |	2 or 4-digit year, 		|				   |
| 				 |	20th century for 00-49	|		%Y   	   |
| RR			 |	2-digit year, 20th 		|			 	   |
| 				 |	century for 00-49		|		%y   	   |
| MON			 |	Abbreviated month 		|			 	   |
| 				 |	(Jan - Dec)				|		%b  	   |
| MONTH			 |	Month name 				|				   |
| 				 |	(January - December)	|		%M  	   |
| MM			 |	Month (1 - 12)			|		%m  	   |
| DY			 |	Abbreviated day  		|			 	   |
| 				 |	(Sun - Sat)				|		%a	 	   |
| DD			 |	Day (1 - 31)			|		%d	 	   |
| HH24			 |	Hour (0 - 23)			|		%H	 	   |
| HH or HH12	 |	Hour (1 - 12)			|		%h	 	   |
| MI			 |	Minutes (0 - 59)		|		%i	 	   |
| SS			 |	Seconds (0 - 59)		|		%s  	   |
+----------------+--------------------------+------------------+