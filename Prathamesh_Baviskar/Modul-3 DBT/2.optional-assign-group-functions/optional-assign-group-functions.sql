		Database Technologies – Optional-Assignment – 2

Note : To solve below queries use “hr” database
Q1. Display first name and last name after converting the first letter of each name to upper case and the rest to lower case.
Ans: -
D4_56327>select concat(upper(substring(first_name,1,1)),lower(substring(first_name,2))) first_name,
 concat(upper(substring(last_name,1,1)),lower(substring(last_name,2))) last_name from employees;
+-------------+-------------+
| first_name  | last_name   |
+-------------+-------------+
| Ellen       | Abel        |
| Sundar      | Ande        |
| Mozhe       | Atkinson    |
| David       | Austin      |
| Hermann     | Baer        |
| Shelli      | Baida       |
| Amit        | Banda       |
+-------------+-------------+
107 rows in set (0.00 sec)

Q2. Display the first word in job title.
Ans: -
D4_56327>select * from jobs;
+------------+---------------------------------+------------+------------+
| JOB_ID     | JOB_TITLE                       | MIN_SALARY | MAX_SALARY |
+------------+---------------------------------+------------+------------+
| AD_PRES    | President                       |      20000 |      40000 |
| AD_VP      | Administration Vice President   |      15000 |      30000 |
| AD_ASST    | Administration Assistant        |       3000 |       6000 |
| FI_MGR     | Finance Manager                 |       8200 |      16000 |
| FI_ACCOUNT | Accountant                      |       4200 |       9000 |
| AC_MGR     | Accounting Manager              |       8200 |      16000 |
| AC_ACCOUNT | Public Accountant               |       4200 |       9000 |
| SA_MAN     | Sales Manager                   |      10000 |      20000 |
| SA_REP     | Sales Representative            |       6000 |      12000 |
| PU_MAN     | Purchasing Manager              |       8000 |      15000 |
| PU_CLERK   | Purchasing Clerk                |       2500 |       5500 |
| ST_MAN     | Stock Manager                   |       5500 |       8500 |
| ST_CLERK   | Stock Clerk                     |       2000 |       5000 |
| SH_CLERK   | Shipping Clerk                  |       2500 |       5500 |
| IT_PROG    | Programmer                      |       4000 |      10000 |
| MK_MAN     | Marketing Manager               |       9000 |      15000 |
| MK_REP     | Marketing Representative        |       4000 |       9000 |
| HR_REP     | Human Resources Representative  |       4000 |       9000 |
| PR_REP     | Public Relations Representative |       4500 |      10500 |
+------------+---------------------------------+------------+------------+
19 rows in set (0.14 sec)

D4_56327>select substring_index(job_title,' ',1) name from jobs;
+----------------+
| name           |
+----------------+
| President      |
| Administration |
| Administration |
| Finance        |
| Accountant     |
| Accounting     |
| Public         |
| Sales          |
| Sales          |
| Purchasing     |
| Purchasing     |
| Stock          |
| Stock          |
| Shipping       |
| Programmer     |
| Marketing      |
| Marketing      |
| Human          |
| Public         |
+----------------+
19 rows in set (0.00 sec)

Q3. Display the length of first name for employees where 
last name contain character ‘b’ after 3rd position.
Ans: -
D4_56327>select first_name, LENGTH(first_name),last_name
 from employees where last_name like ('___b%');
+------------+--------------------+-----------+
| first_name | LENGTH(first_name) | last_name |
+------------+--------------------+-----------+
| Gerald     |                  6 | Cambrault |
| Nanette    |                  7 | Cambrault |
+------------+--------------------+-----------+
2 rows in set (0.00 sec)

Q4. Display first name in upper case and email address in 
lower case for employees where the first name and email 
address are same irrespective of the case.
Ans: -
D4_56327>select upper(first_name) first_name, lower(email)
from employees where lower(first_name) = lower(email);
Empty set (0.00 sec)

Q5. Display first name, salary, and round the salary to thousands.
Ans: -
D4_56327>select first_name, salary, round(salary,0) from employees;
+-------------+----------+-----------------+
| first_name  | salary   | round(salary,0) |
+-------------+----------+-----------------+
| Steven      | 24000.00 |           24000 |
| Neena       | 17000.00 |           17000 |
| Lex         | 17000.00 |           17000 |
| Alexander   |  9000.00 |            9000 |
| Bruce       |  6000.00 |            6000 |
| David       |  4800.00 |            4800 |
| Valli       |  4800.00 |            4800 |
| Diana       |  4200.00 |            4200 |
| Nancy       | 12000.00 |           12000 |
| Daniel      |  9000.00 |            9000 |
| John        |  8200.00 |            8200 |
| Ismael      |  7700.00 |            7700 |
| Jose Manuel |  7800.00 |            7800 |
| Luis        |  6900.00 |            6900 |
| Den         | 11000.00 |           11000 |
+-------------+----------+-----------------+
107 rows in set (0.00 sec)

Q6. Display employee ID and the date on which he ended his
 previous job.
Ans: -
D4_56327>select employee_id, end_date from job_history;
+-------------+------------+
| employee_id | end_date   |
+-------------+------------+
|         102 | 1998-07-24 |
|         101 | 1993-10-27 |
|         101 | 1997-03-15 |
|         201 | 1999-12-19 |
|         114 | 1999-12-31 |
|         122 | 1999-12-31 |
|         200 | 1993-06-17 |
|         176 | 1998-12-31 |
|         176 | 1999-12-31 |
|         200 | 1998-12-31 |
|           0 | 0000-00-00 |
+-------------+------------+
11 rows in set (0.00 sec)

Q7. Display first name and date of first salary of the employees.
Ans: -
D4_56327>select first_name, hire_date, date(hire_date + interval 1 month) 
date_of_first_salary from employees;
+-------------+------------+----------------------+
| first_name  | hire_date  | date_of_first_salary |
+-------------+------------+----------------------+
| Steven      | 1987-06-17 | 1987-07-17           |
| Neena       | 1987-06-18 | 1987-07-18           |
| Lex         | 1987-06-19 | 1987-07-19           |
| Alexander   | 1987-06-20 | 1987-07-20           |
| Bruce       | 1987-06-21 | 1987-07-21           |
| David       | 1987-06-22 | 1987-07-22           |
| Valli       | 1987-06-23 | 1987-07-23           |
| Hermann     | 1987-09-29 | 1987-10-29           |
| Shelley     | 1987-09-30 | 1987-10-30           |
| William     | 1987-10-01 | 1987-11-01           |
+-------------+------------+----------------------+
107 rows in set (0.00 sec)

Q8. Display first name and experience of the employees.
Ans: -
D4_56327>select first_name, TIMESTAMPdiff(year,hire_date,now()) experience from employees;
+-------------+------------+
| first_name  | experience |
+-------------+------------+
| Steven      |         34 |
| Neena       |         34 |
| Lex         |         34 |
| Alexander   |         34 |
| Bruce       |         34 |
| David       |         34 |
| Shelley     |         34 |
| William     |         34 |
+-------------+------------+
107 rows in set (0.00 sec)

Q9. Display first name of employees who joined in 2001.
Ans: -
D4_56327>select first_name, hire_date from employees 
where year(hire_date) = 2001;

Q10. Display employees who joined in the current year.
Ans: -
D4_56327>select first_name, hire_date from employees 
where year(hire_date) != year(now());

Q11. Display the number of days between system date and 
1st January 2011.
Ans: -
D4_56327> select datediff(now(),'2011-01-01');
select timestampdiff(day,'2011-01-01',now());

Q12. Display number of employees joined after 15th of the month.
Ans: -
D4_56327>select count(employee_id) from employees 
where day(hire_date) > 15;
+--------------------+
| count(employee_id) |
+--------------------+
|                 61 |
+--------------------+
1 row in set (0.07 sec)

Q13. Display third highest salary of employees.
Ans: -
D4_56327>select * from employees order by salary desc limit 2,1;