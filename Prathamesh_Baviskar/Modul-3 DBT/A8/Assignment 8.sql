Database Technologies – Assignment 8
*Use sub-query to solve following problems.

Q1. Display the first name and salary for all employees who earn more than employee number 103 (Employees table).
Ans: -
D4_56327>select first_name, salary from employees where salary > (select salary from employees where employee_id = 103);
+------------+----------+
| first_name | salary   |
+------------+----------+
| Steven     | 24000.00 |
| Neena      | 17000.00 |
| Lex        | 17000.00 |
| Nancy      | 12000.00 |
| Den        | 11000.00 |
| John       | 14000.00 |
| Karen      | 13500.00 |
| Alberto    | 12000.00 |
| Gerald     | 11000.00 |
| Eleni      | 10500.00 |
| Peter      | 10000.00 |
| David      |  9500.00 |
| Janette    | 10000.00 |
| Patrick    |  9500.00 |
| Clara      | 10500.00 |
| Danielle   |  9500.00 |
| Lisa       | 11500.00 |
| Harrison   | 10000.00 |
| Tayler     |  9600.00 |
| Ellen      | 11000.00 |
| Michael    | 13000.00 |
| Hermann    | 10000.00 |
| Shelley    | 12000.00 |
+------------+----------+
23 rows in set (0.09 sec)

Q2. Display the department number and department name for all departments whose location number is equal to the location number of department number 90 (Departments table).
Ans: -
D4_56327>select department_id, department_name from departments where location_id = (select location_id from departments where department_id = 90);
+---------------+----------------------+
| department_id | department_name      |
+---------------+----------------------+
|            10 | Administration       |
|            30 | Purchasing           |
|            90 | Executive            |
|           100 | Finance              |
|           110 | Accounting           |
|           120 | Treasury             |
|           130 | Corporate Tax        |
|           140 | Control And Credit   |
|           150 | Shareholder Services |
|           160 | Benefits             |
|           170 | Manufacturing        |
|           180 | Construction         |
|           190 | Contracting          |
|           200 | Operations           |
|           210 | IT Support           |
|           220 | NOC                  |
|           230 | IT Helpdesk          |
|           240 | Government Sales     |
|           250 | Retail Sales         |
|           260 | Recruiting           |
|           270 | Payroll              |
+---------------+----------------------+
21 rows in set (0.15 sec)

Q3. Display the last name and hire date for all employees who was hired after employee number 101 (Employees table).
Ans: -
D4_56327>select last_name, hire_date from employees where hire_date > (select hire_date from employees where employee_id = 103);
+-------------+------------+
| last_name   | hire_date  |
+-------------+------------+
| Ernst       | 1987-06-21 |
| Austin      | 1987-06-22 |
| Pataballa   | 1987-06-23 |
| Lorentz     | 1987-06-24 |
| Greenberg   | 1987-06-25 |
| Faviet      | 1987-06-26 |
| Chen        | 1987-06-27 |
| Sciarra     | 1987-06-28 |
| Urman       | 1987-06-29 |
| Popp        | 1987-06-30 |
| Raphaely    | 1987-07-01 |
| Khoo        | 1987-07-02 |
| Baida       | 1987-07-03 |
| Tobias      | 1987-07-04 |
| Himuro      | 1987-07-05 |
| Colmenares  | 1987-07-06 |
| Weiss       | 1987-07-07 |
| Fripp       | 1987-07-08 |
| Kaufling    | 1987-07-09 |
| Vollman     | 1987-07-10 |
| Mourgos     | 1987-07-11 |
| Nayer       | 1987-07-12 |
| Mikkilineni | 1987-07-13 |
| Landry      | 1987-07-14 |
| Markle      | 1987-07-15 |
| Bissot      | 1987-07-16 |
| Atkinson    | 1987-07-17 |
| Marlow      | 1987-07-18 |
| Olson       | 1987-07-19 |
| Mallin      | 1987-07-20 |
| Rogers      | 1987-07-21 |
| Gee         | 1987-07-22 |
| Philtanker  | 1987-07-23 |
| Ladwig      | 1987-07-24 |
| Stiles      | 1987-07-25 |
| Seo         | 1987-07-26 |
| Patel       | 1987-07-27 |
| Rajs        | 1987-07-28 |
| Davies      | 1987-07-29 |
| Matos       | 1987-07-30 |
| Vargas      | 1987-07-31 |
| Russell     | 1987-08-01 |
| Partners    | 1987-08-02 |
| Errazuriz   | 1987-08-03 |
| Cambrault   | 1987-08-04 |
| Zlotkey     | 1987-08-05 |
| Tucker      | 1987-08-06 |
| Bernstein   | 1987-08-07 |
| Hall        | 1987-08-08 |
| Olsen       | 1987-08-09 |
| Cambrault   | 1987-08-10 |
| Tuvault     | 1987-08-11 |
| King        | 1987-08-12 |
| Sully       | 1987-08-13 |
| McEwen      | 1987-08-14 |
| Smith       | 1987-08-15 |
| Doran       | 1987-08-16 |
| Sewall      | 1987-08-17 |
| Vishney     | 1987-08-18 |
| Greene      | 1987-08-19 |
| Marvins     | 1987-08-20 |
| Lee         | 1987-08-21 |
| Ande        | 1987-08-22 |
| Banda       | 1987-08-23 |
| Ozer        | 1987-08-24 |
| Bloom       | 1987-08-25 |
| Fox         | 1987-08-26 |
| Smith       | 1987-08-27 |
| Bates       | 1987-08-28 |
| Kumar       | 1987-08-29 |
| Abel        | 1987-08-30 |
| Hutton      | 1987-08-31 |
| Taylor      | 1987-09-01 |
| Livingston  | 1987-09-02 |
| Grant       | 1987-09-03 |
| Johnson     | 1987-09-04 |
| Taylor      | 1987-09-05 |
| Fleaur      | 1987-09-06 |
| Sullivan    | 1987-09-07 |
| Geoni       | 1987-09-08 |
| Sarchand    | 1987-09-09 |
| Bull        | 1987-09-10 |
| Dellinger   | 1987-09-11 |
| Cabrio      | 1987-09-12 |
| Chung       | 1987-09-13 |
| Dilly       | 1987-09-14 |
| Gates       | 1987-09-15 |
| Perkins     | 1987-09-16 |
| Bell        | 1987-09-17 |
| Everett     | 1987-09-18 |
| McCain      | 1987-09-19 |
| Jones       | 1987-09-20 |
| Walsh       | 1987-09-21 |
| Feeney      | 1987-09-22 |
| OConnell    | 1987-09-23 |
| Grant       | 1987-09-24 |
| Whalen      | 1987-09-25 |
| Hartstein   | 1987-09-26 |
| Fay         | 1987-09-27 |
| Mavris      | 1987-09-28 |
| Baer        | 1987-09-29 |
| Higgins     | 1987-09-30 |
| Gietz       | 1987-10-01 |
+-------------+------------+
103 rows in set (0.10 sec)

Q4. Finds the employees who have the highest salary
Ans: -
D4_56327>select employee_id, concat(first_name,' ',last_name) Name, salary from employees where salary =  (select max(salary) from employees);
+-------------+-------------+----------+
| employee_id | Name        | salary   |
+-------------+-------------+----------+
|         100 | Steven King | 24000.00 |
+-------------+-------------+----------+
1 row in set (0.07 sec)

Q5. Find all employees who salaries are greater than the average salary of all employees
Ans: -
D4_56327>select employee_id, concat(first_name,' ',last_name) Name, round(salary,0) from employees where salary > (select round(avg(salary),2) from employees);
+-------------+-------------------+-----------------+
| employee_id | Name              | round(salary,0) |
+-------------+-------------------+-----------------+
|         100 | Steven King       |           24000 |
|         101 | Neena Kochhar     |           17000 |
|         102 | Lex De Haan       |           17000 |
|         103 | Alexander Hunold  |            9000 |
|         108 | Nancy Greenberg   |           12000 |
|         109 | Daniel Faviet     |            9000 |
|         110 | John Chen         |            8200 |
|         111 | Ismael Sciarra    |            7700 |
|         112 | Jose Manuel Urman |            7800 |
|         113 | Luis Popp         |            6900 |
|         114 | Den Raphaely      |           11000 |
|         120 | Matthew Weiss     |            8000 |
|         121 | Adam Fripp        |            8200 |
|         122 | Payam Kaufling    |            7900 |
|         123 | Shanta Vollman    |            6500 |
|         145 | John Russell      |           14000 |
|         146 | Karen Partners    |           13500 |
|         147 | Alberto Errazuriz |           12000 |
|         148 | Gerald Cambrault  |           11000 |
|         149 | Eleni Zlotkey     |           10500 |
|         150 | Peter Tucker      |           10000 |
|         151 | David Bernstein   |            9500 |
|         152 | Peter Hall        |            9000 |
|         153 | Christopher Olsen |            8000 |
|         154 | Nanette Cambrault |            7500 |
|         155 | Oliver Tuvault    |            7000 |
|         156 | Janette King      |           10000 |
|         157 | Patrick Sully     |            9500 |
|         158 | Allan McEwen      |            9000 |
|         159 | Lindsey Smith     |            8000 |
|         160 | Louise Doran      |            7500 |
|         161 | Sarath Sewall     |            7000 |
|         162 | Clara Vishney     |           10500 |
|         163 | Danielle Greene   |            9500 |
|         164 | Mattea Marvins    |            7200 |
|         165 | David Lee         |            6800 |
|         168 | Lisa Ozer         |           11500 |
|         169 | Harrison Bloom    |           10000 |
|         170 | Tayler Fox        |            9600 |
|         171 | William Smith     |            7400 |
|         172 | Elizabeth Bates   |            7300 |
|         174 | Ellen Abel        |           11000 |
|         175 | Alyssa Hutton     |            8800 |
|         176 | Jonathon Taylor   |            8600 |
|         177 | Jack Livingston   |            8400 |
|         178 | Kimberely Grant   |            7000 |
|         201 | Michael Hartstein |           13000 |
|         203 | Susan Mavris      |            6500 |
|         204 | Hermann Baer      |           10000 |
|         205 | Shelley Higgins   |           12000 |
|         206 | William Gietz     |            8300 |
+-------------+-------------------+-----------------+
51 rows in set (0.00 sec)