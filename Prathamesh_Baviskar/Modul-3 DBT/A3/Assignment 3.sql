Database Technologies – Assignment 3


Note: To solve below queries use “hr” database
(HR database data is partial. For few queries you may have empty resultset).

Q1. Write a query to display the first_name, last_name using alias name "First Name", "Last Name".
Ans: -
D4_56327>SELECT user(),database();
+--------------------+------------+
| user()             | database() |
+--------------------+------------+
| D4_56327@localhost | hr         |
+--------------------+------------+
1 row in set (0.05 sec)

D4_56327>select FIRST_NAME "FIRST NAME", LAST_NAME "LAST NAME" FROM employees;
+-------------+-------------+
| FIRST NAME  | LAST NAME   |
+-------------+-------------+
| Ellen       | Abel        |
| Sundar      | Ande        |
| Mozhe       | Atkinson    |
| David       | Austin      |
| Hermann     | Baer        |
| Shelli      | Baida       |
| Amit        | Banda       |
| Elizabeth   | Bates       |
| Sarah       | Bell        |
| David       | Bernstein   |
| Laura       | Bissot      |
| Harrison    | Bloom       |
| Alexis      | Bull        |
| Anthony     | Cabrio      |
| Gerald      | Cambrault   |
| Nanette     | Cambrault   |
| John        | Chen        |
| Kelly       | Chung       |
| Karen       | Colmenares  |
| Curtis      | Davies      |
| Lex         | De Haan     |
| Julia       | Dellinger   |
| Jennifer    | Dilly       |
| Louise      | Doran       |
| Bruce       | Ernst       |
| Alberto     | Errazuriz   |
| Britney     | Everett     |
| Daniel      | Faviet      |
| Pat         | Fay         |
| Kevin       | Feeney      |
| Jean        | Fleaur      |
| Tayler      | Fox         |
| Adam        | Fripp       |
| Timothy     | Gates       |
| Ki          | Gee         |
| Girard      | Geoni       |
| William     | Gietz       |
| Douglas     | Grant       |
| Kimberely   | Grant       |
| Nancy       | Greenberg   |
| Danielle    | Greene      |
| Peter       | Hall        |
| Michael     | Hartstein   |
| Shelley     | Higgins     |
| Guy         | Himuro      |
| Alexander   | Hunold      |
| Alyssa      | Hutton      |
| Charles     | Johnson     |
| Vance       | Jones       |
| Payam       | Kaufling    |
| Alexander   | Khoo        |
| Janette     | King        |
| Steven      | King        |
| Neena       | Kochhar     |
| Sundita     | Kumar       |
| Renske      | Ladwig      |
| James       | Landry      |
| David       | Lee         |
| Jack        | Livingston  |
| Diana       | Lorentz     |
| Jason       | Mallin      |
| Steven      | Markle      |
| James       | Marlow      |
| Mattea      | Marvins     |
| Randall     | Matos       |
| Susan       | Mavris      |
| Samuel      | McCain      |
| Allan       | McEwen      |
| Irene       | Mikkilineni |
| Kevin       | Mourgos     |
| Julia       | Nayer       |
| Donald      | OConnell    |
| Christopher | Olsen       |
| TJ          | Olson       |
| Lisa        | Ozer        |
| Karen       | Partners    |
| Valli       | Pataballa   |
| Joshua      | Patel       |
| Randall     | Perkins     |
| Hazel       | Philtanker  |
| Luis        | Popp        |
| Trenna      | Rajs        |
| Den         | Raphaely    |
| Michael     | Rogers      |
| John        | Russell     |
| Nandita     | Sarchand    |
| Ismael      | Sciarra     |
| John        | Seo         |
| Sarath      | Sewall      |
| Lindsey     | Smith       |
| William     | Smith       |
| Stephen     | Stiles      |
| Martha      | Sullivan    |
| Patrick     | Sully       |
| Jonathon    | Taylor      |
| Winston     | Taylor      |
| Sigal       | Tobias      |
| Peter       | Tucker      |
| Oliver      | Tuvault     |
| Jose Manuel | Urman       |
| Peter       | Vargas      |
| Clara       | Vishney     |
| Shanta      | Vollman     |
| Alana       | Walsh       |
| Matthew     | Weiss       |
| Jennifer    | Whalen      |
| Eleni       | Zlotkey     |
+-------------+-------------+
107 rows in set (0.08 sec)

Q2. Write a query to get the names (first_name, last_name), salary, PF of all the employees (PF is calculated as 15% of salary).
Ans: -
D4_56327>select first_name, last_name,salary, salary * 1.15 PF from employees;
+-------------+-------------+----------+------------+
| first_name  | last_name   | salary   | PF         |
+-------------+-------------+----------+------------+
| Steven      | King        | 24000.00 | 27600.0000 |
| Neena       | Kochhar     | 17000.00 | 19550.0000 |
| Lex         | De Haan     | 17000.00 | 19550.0000 |
| Alexander   | Hunold      |  9000.00 | 10350.0000 |
| Bruce       | Ernst       |  6000.00 |  6900.0000 |
| David       | Austin      |  4800.00 |  5520.0000 |
| Valli       | Pataballa   |  4800.00 |  5520.0000 |
| Diana       | Lorentz     |  4200.00 |  4830.0000 |
| Nancy       | Greenberg   | 12000.00 | 13800.0000 |
| Daniel      | Faviet      |  9000.00 | 10350.0000 |
| John        | Chen        |  8200.00 |  9430.0000 |
| Ismael      | Sciarra     |  7700.00 |  8855.0000 |
| Jose Manuel | Urman       |  7800.00 |  8970.0000 |
| Luis        | Popp        |  6900.00 |  7935.0000 |
| Den         | Raphaely    | 11000.00 | 12650.0000 |
| Alexander   | Khoo        |  3100.00 |  3565.0000 |
| Shelli      | Baida       |  2900.00 |  3335.0000 |
| Sigal       | Tobias      |  2800.00 |  3220.0000 |
| Guy         | Himuro      |  2600.00 |  2990.0000 |
| Karen       | Colmenares  |  2500.00 |  2875.0000 |
| Matthew     | Weiss       |  8000.00 |  9200.0000 |
| Adam        | Fripp       |  8200.00 |  9430.0000 |
| Payam       | Kaufling    |  7900.00 |  9085.0000 |
| Shanta      | Vollman     |  6500.00 |  7475.0000 |
| Kevin       | Mourgos     |  5800.00 |  6670.0000 |
| Julia       | Nayer       |  3200.00 |  3680.0000 |
| Irene       | Mikkilineni |  2700.00 |  3105.0000 |
| James       | Landry      |  2400.00 |  2760.0000 |
| Steven      | Markle      |  2200.00 |  2530.0000 |
| Laura       | Bissot      |  3300.00 |  3795.0000 |
| Mozhe       | Atkinson    |  2800.00 |  3220.0000 |
| James       | Marlow      |  2500.00 |  2875.0000 |
| TJ          | Olson       |  2100.00 |  2415.0000 |
| Jason       | Mallin      |  3300.00 |  3795.0000 |
| Michael     | Rogers      |  2900.00 |  3335.0000 |
| Ki          | Gee         |  2400.00 |  2760.0000 |
| Hazel       | Philtanker  |  2200.00 |  2530.0000 |
| Renske      | Ladwig      |  3600.00 |  4140.0000 |
| Stephen     | Stiles      |  3200.00 |  3680.0000 |
| John        | Seo         |  2700.00 |  3105.0000 |
| Joshua      | Patel       |  2500.00 |  2875.0000 |
| Trenna      | Rajs        |  3500.00 |  4025.0000 |
| Curtis      | Davies      |  3100.00 |  3565.0000 |
| Randall     | Matos       |  2600.00 |  2990.0000 |
| Peter       | Vargas      |  2500.00 |  2875.0000 |
| John        | Russell     | 14000.00 | 16100.0000 |
| Karen       | Partners    | 13500.00 | 15525.0000 |
| Alberto     | Errazuriz   | 12000.00 | 13800.0000 |
| Gerald      | Cambrault   | 11000.00 | 12650.0000 |
| Eleni       | Zlotkey     | 10500.00 | 12075.0000 |
| Peter       | Tucker      | 10000.00 | 11500.0000 |
| David       | Bernstein   |  9500.00 | 10925.0000 |
| Peter       | Hall        |  9000.00 | 10350.0000 |
| Christopher | Olsen       |  8000.00 |  9200.0000 |
| Nanette     | Cambrault   |  7500.00 |  8625.0000 |
| Oliver      | Tuvault     |  7000.00 |  8050.0000 |
| Janette     | King        | 10000.00 | 11500.0000 |
| Patrick     | Sully       |  9500.00 | 10925.0000 |
| Allan       | McEwen      |  9000.00 | 10350.0000 |
| Lindsey     | Smith       |  8000.00 |  9200.0000 |
| Louise      | Doran       |  7500.00 |  8625.0000 |
| Sarath      | Sewall      |  7000.00 |  8050.0000 |
| Clara       | Vishney     | 10500.00 | 12075.0000 |
| Danielle    | Greene      |  9500.00 | 10925.0000 |
| Mattea      | Marvins     |  7200.00 |  8280.0000 |
| David       | Lee         |  6800.00 |  7820.0000 |
| Sundar      | Ande        |  6400.00 |  7360.0000 |
| Amit        | Banda       |  6200.00 |  7130.0000 |
| Lisa        | Ozer        | 11500.00 | 13225.0000 |
| Harrison    | Bloom       | 10000.00 | 11500.0000 |
| Tayler      | Fox         |  9600.00 | 11040.0000 |
| William     | Smith       |  7400.00 |  8510.0000 |
| Elizabeth   | Bates       |  7300.00 |  8395.0000 |
| Sundita     | Kumar       |  6100.00 |  7015.0000 |
| Ellen       | Abel        | 11000.00 | 12650.0000 |
| Alyssa      | Hutton      |  8800.00 | 10120.0000 |
| Jonathon    | Taylor      |  8600.00 |  9890.0000 |
| Jack        | Livingston  |  8400.00 |  9660.0000 |
| Kimberely   | Grant       |  7000.00 |  8050.0000 |
| Charles     | Johnson     |  6200.00 |  7130.0000 |
| Winston     | Taylor      |  3200.00 |  3680.0000 |
| Jean        | Fleaur      |  3100.00 |  3565.0000 |
| Martha      | Sullivan    |  2500.00 |  2875.0000 |
| Girard      | Geoni       |  2800.00 |  3220.0000 |
| Nandita     | Sarchand    |  4200.00 |  4830.0000 |
| Alexis      | Bull        |  4100.00 |  4715.0000 |
| Julia       | Dellinger   |  3400.00 |  3910.0000 |
| Anthony     | Cabrio      |  3000.00 |  3450.0000 |
| Kelly       | Chung       |  3800.00 |  4370.0000 |
| Jennifer    | Dilly       |  3600.00 |  4140.0000 |
| Timothy     | Gates       |  2900.00 |  3335.0000 |
| Randall     | Perkins     |  2500.00 |  2875.0000 |
| Sarah       | Bell        |  4000.00 |  4600.0000 |
| Britney     | Everett     |  3900.00 |  4485.0000 |
| Samuel      | McCain      |  3200.00 |  3680.0000 |
| Vance       | Jones       |  2800.00 |  3220.0000 |
| Alana       | Walsh       |  3100.00 |  3565.0000 |
| Kevin       | Feeney      |  3000.00 |  3450.0000 |
| Donald      | OConnell    |  2600.00 |  2990.0000 |
| Douglas     | Grant       |  2600.00 |  2990.0000 |
| Jennifer    | Whalen      |  4400.00 |  5060.0000 |
| Michael     | Hartstein   | 13000.00 | 14950.0000 |
| Pat         | Fay         |  6000.00 |  6900.0000 |
| Susan       | Mavris      |  6500.00 |  7475.0000 |
| Hermann     | Baer        | 10000.00 | 11500.0000 |
| Shelley     | Higgins     | 12000.00 | 13800.0000 |
| William     | Gietz       |  8300.00 |  9545.0000 |
+-------------+-------------+----------+------------+
107 rows in set (0.00 sec)

Q3. Write a query to select first 10 records from a employees table.
Ans: -
D4_56327>select * from employees limit 10;
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | EMAIL    | PHONE_NUMBER | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+
|         100 | Steven     | King      | SKING    | 515.123.4567 | 1987-06-17 | AD_PRES    | 24000.00 |           0.00 |          0 |            90 |
|         101 | Neena      | Kochhar   | NKOCHHAR | 515.123.4568 | 1987-06-18 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
|         102 | Lex        | De Haan   | LDEHAAN  | 515.123.4569 | 1987-06-19 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
|         103 | Alexander  | Hunold    | AHUNOLD  | 590.423.4567 | 1987-06-20 | IT_PROG    |  9000.00 |           0.00 |        102 |            60 |
|         104 | Bruce      | Ernst     | BERNST   | 590.423.4568 | 1987-06-21 | IT_PROG    |  6000.00 |           0.00 |        103 |            60 |
|         105 | David      | Austin    | DAUSTIN  | 590.423.4569 | 1987-06-22 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |
|         106 | Valli      | Pataballa | VPATABAL | 590.423.4560 | 1987-06-23 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |
|         107 | Diana      | Lorentz   | DLORENTZ | 590.423.5567 | 1987-06-24 | IT_PROG    |  4200.00 |           0.00 |        103 |            60 |
|         108 | Nancy      | Greenberg | NGREENBE | 515.124.4569 | 1987-06-25 | FI_MGR     | 12000.00 |           0.00 |        101 |           100 |
|         109 | Daniel     | Faviet    | DFAVIET  | 515.124.4169 | 1987-06-26 | FI_ACCOUNT |  9000.00 |           0.00 |        108 |           100 |
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+
10 rows in set (0.00 sec)

Q4. Write a query to display job id and job title of first 5 jobs.
Ans: -
D4_56327>select job_id, job_title from jobs limit 5;
+------------+-------------------------------+
| job_id     | job_title                     |
+------------+-------------------------------+
| AD_PRES    | President                     |
| AD_VP      | Administration Vice President |
| AD_ASST    | Administration Assistant      |
| FI_MGR     | Finance Manager               |
| FI_ACCOUNT | Accountant                    |
+------------+-------------------------------+
5 rows in set (0.00 sec)

Q5. Write a query to display location id, street address and postal code of 6 locations after first 3 locations.
Ans: -
D4_56327>select location_id, street_address, postal_code from locations limit 3,6;
+-------------+---------------------+-------------+
| location_id | street_address      | postal_code |
+-------------+---------------------+-------------+
|        1300 | 9450 Kamiya-cho     | 6823        |
|        1400 | 2014 Jabberwocky Rd | 26192       |
|        1500 | 2011 Interiors Blvd | 99236       |
|        1600 | 2007 Zagora St      | 50090       |
|        1700 | 2004 Charade Rd     | 98199       |
|        1800 | 147 Spadina Ave     | M5V 2L7     |
+-------------+---------------------+-------------+
6 rows in set (0.00 sec)

Q6. Write a query to display job title and difference between max and min salary for that job.
Ans: -
D4_56327>select job_title, max_salary-min_salary difference from jobs;
+---------------------------------+------------+
| job_title                       | difference |
+---------------------------------+------------+
| President                       |      20000 |
| Administration Vice President   |      15000 |
| Administration Assistant        |       3000 |
| Finance Manager                 |       7800 |
| Accountant                      |       4800 |
| Accounting Manager              |       7800 |
| Public Accountant               |       4800 |
| Sales Manager                   |      10000 |
| Sales Representative            |       6000 |
| Purchasing Manager              |       7000 |
| Purchasing Clerk                |       3000 |
| Stock Manager                   |       3000 |
| Stock Clerk                     |       3000 |
| Shipping Clerk                  |       3000 |
| Programmer                      |       6000 |
| Marketing Manager               |       6000 |
| Marketing Representative        |       5000 |
| Human Resources Representative  |       5000 |
| Public Relations Representative |       6000 |
+---------------------------------+------------+
19 rows in set (0.05 sec)

Q7. Write a query to get unique department ID from employee table.
Ans: -
D4_56327>select distinct department_id from employees;
+---------------+
| department_id |
+---------------+
|             0 |
|            10 |
|            20 |
|            30 |
|            40 |
|            50 |
|            60 |
|            70 |
|            80 |
|            90 |
|           100 |
|           110 |
+---------------+
12 rows in set (0.10 sec)

Q8. Write a query to get all employee details from the employee table order by first name, descending.
Ans: -
D4_56327>select * from employees order by first_name desc;
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME  | LAST_NAME   | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
|         180 | Winston     | Taylor      | WTAYLOR  | 650.507.9876       | 1987-09-05 | SH_CLERK   |  3200.00 |           0.00 |        120 |            50 |
|         171 | William     | Smith       | WSMITH   | 011.44.1343.629268 | 1987-08-27 | SA_REP     |  7400.00 |           0.15 |        148 |            80 |
|         206 | William     | Gietz       | WGIETZ   | 515.123.8181       | 1987-10-01 | AC_ACCOUNT |  8300.00 |           0.00 |        205 |           110 |
|         195 | Vance       | Jones       | VJONES   | 650.501.4876       | 1987-09-20 | SH_CLERK   |  2800.00 |           0.00 |        123 |            50 |
|         106 | Valli       | Pataballa   | VPATABAL | 590.423.4560       | 1987-06-23 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |
|         141 | Trenna      | Rajs        | TRAJS    | 650.121.8009       | 1987-07-28 | ST_CLERK   |  3500.00 |           0.00 |        124 |            50 |
|         132 | TJ          | Olson       | TJOLSON  | 650.124.8234       | 1987-07-19 | ST_CLERK   |  2100.00 |           0.00 |        121 |            50 |
|         190 | Timothy     | Gates       | TGATES   | 650.505.3876       | 1987-09-15 | SH_CLERK   |  2900.00 |           0.00 |        122 |            50 |
|         170 | Tayler      | Fox         | TFOX     | 011.44.1343.729268 | 1987-08-26 | SA_REP     |  9600.00 |           0.20 |        148 |            80 |
|         203 | Susan       | Mavris      | SMAVRIS  | 515.123.7777       | 1987-09-28 | HR_REP     |  6500.00 |           0.00 |        101 |            40 |
|         173 | Sundita     | Kumar       | SKUMAR   | 011.44.1343.329268 | 1987-08-29 | SA_REP     |  6100.00 |           0.10 |        148 |            80 |
|         166 | Sundar      | Ande        | SANDE    | 011.44.1346.629268 | 1987-08-22 | SA_REP     |  6400.00 |           0.10 |        147 |            80 |
|         100 | Steven      | King        | SKING    | 515.123.4567       | 1987-06-17 | AD_PRES    | 24000.00 |           0.00 |          0 |            90 |
|         128 | Steven      | Markle      | SMARKLE  | 650.124.1434       | 1987-07-15 | ST_CLERK   |  2200.00 |           0.00 |        120 |            50 |
|         138 | Stephen     | Stiles      | SSTILES  | 650.121.2034       | 1987-07-25 | ST_CLERK   |  3200.00 |           0.00 |        123 |            50 |
|         117 | Sigal       | Tobias      | STOBIAS  | 515.127.4564       | 1987-07-04 | PU_CLERK   |  2800.00 |           0.00 |        114 |            30 |
|         116 | Shelli      | Baida       | SBAIDA   | 515.127.4563       | 1987-07-03 | PU_CLERK   |  2900.00 |           0.00 |        114 |            30 |
|         205 | Shelley     | Higgins     | SHIGGINS | 515.123.8080       | 1987-09-30 | AC_MGR     | 12000.00 |           0.00 |        101 |           110 |
|         123 | Shanta      | Vollman     | SVOLLMAN | 650.123.4234       | 1987-07-10 | ST_MAN     |  6500.00 |           0.00 |        100 |            50 |
|         161 | Sarath      | Sewall      | SSEWALL  | 011.44.1345.529268 | 1987-08-17 | SA_REP     |  7000.00 |           0.25 |        146 |            80 |
|         192 | Sarah       | Bell        | SBELL    | 650.501.1876       | 1987-09-17 | SH_CLERK   |  4000.00 |           0.00 |        123 |            50 |
|         194 | Samuel      | McCain      | SMCCAIN  | 650.501.3876       | 1987-09-19 | SH_CLERK   |  3200.00 |           0.00 |        123 |            50 |
|         137 | Renske      | Ladwig      | RLADWIG  | 650.121.1234       | 1987-07-24 | ST_CLERK   |  3600.00 |           0.00 |        123 |            50 |
|         143 | Randall     | Matos       | RMATOS   | 650.121.2874       | 1987-07-30 | ST_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         191 | Randall     | Perkins     | RPERKINS | 650.505.4876       | 1987-09-16 | SH_CLERK   |  2500.00 |           0.00 |        122 |            50 |
|         144 | Peter       | Vargas      | PVARGAS  | 650.121.2004       | 1987-07-31 | ST_CLERK   |  2500.00 |           0.00 |        124 |            50 |
|         150 | Peter       | Tucker      | PTUCKER  | 011.44.1344.129268 | 1987-08-06 | SA_REP     | 10000.00 |           0.30 |        145 |            80 |
|         152 | Peter       | Hall        | PHALL    | 011.44.1344.478968 | 1987-08-08 | SA_REP     |  9000.00 |           0.25 |        145 |            80 |
|         122 | Payam       | Kaufling    | PKAUFLIN | 650.123.3234       | 1987-07-09 | ST_MAN     |  7900.00 |           0.00 |        100 |            50 |
|         157 | Patrick     | Sully       | PSULLY   | 011.44.1345.929268 | 1987-08-13 | SA_REP     |  9500.00 |           0.35 |        146 |            80 |
|         202 | Pat         | Fay         | PFAY     | 603.123.6666       | 1987-09-27 | MK_REP     |  6000.00 |           0.00 |        201 |            20 |
|         155 | Oliver      | Tuvault     | OTUVAULT | 011.44.1344.486508 | 1987-08-11 | SA_REP     |  7000.00 |           0.15 |        145 |            80 |
|         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568       | 1987-06-18 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
|         154 | Nanette     | Cambrault   | NCAMBRAU | 011.44.1344.987668 | 1987-08-10 | SA_REP     |  7500.00 |           0.20 |        145 |            80 |
|         184 | Nandita     | Sarchand    | NSARCHAN | 650.509.1876       | 1987-09-09 | SH_CLERK   |  4200.00 |           0.00 |        121 |            50 |
|         108 | Nancy       | Greenberg   | NGREENBE | 515.124.4569       | 1987-06-25 | FI_MGR     | 12000.00 |           0.00 |        101 |           100 |
|         130 | Mozhe       | Atkinson    | MATKINSO | 650.124.6234       | 1987-07-17 | ST_CLERK   |  2800.00 |           0.00 |        121 |            50 |
|         134 | Michael     | Rogers      | MROGERS  | 650.127.1834       | 1987-07-21 | ST_CLERK   |  2900.00 |           0.00 |        122 |            50 |
|         201 | Michael     | Hartstein   | MHARTSTE | 515.123.5555       | 1987-09-26 | MK_MAN     | 13000.00 |           0.00 |        100 |            20 |
|         120 | Matthew     | Weiss       | MWEISS   | 650.123.1234       | 1987-07-07 | ST_MAN     |  8000.00 |           0.00 |        100 |            50 |
|         164 | Mattea      | Marvins     | MMARVINS | 011.44.1346.329268 | 1987-08-20 | SA_REP     |  7200.00 |           0.10 |        147 |            80 |
|         182 | Martha      | Sullivan    | MSULLIVA | 650.507.9878       | 1987-09-07 | SH_CLERK   |  2500.00 |           0.00 |        120 |            50 |
|         113 | Luis        | Popp        | LPOPP    | 515.124.4567       | 1987-06-30 | FI_ACCOUNT |  6900.00 |           0.00 |        108 |           100 |
|         160 | Louise      | Doran       | LDORAN   | 011.44.1345.629268 | 1987-08-16 | SA_REP     |  7500.00 |           0.30 |        146 |            80 |
|         168 | Lisa        | Ozer        | LOZER    | 011.44.1343.929268 | 1987-08-24 | SA_REP     | 11500.00 |           0.25 |        148 |            80 |
|         159 | Lindsey     | Smith       | LSMITH   | 011.44.1345.729268 | 1987-08-15 | SA_REP     |  8000.00 |           0.30 |        146 |            80 |
|         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569       | 1987-06-19 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
|         129 | Laura       | Bissot      | LBISSOT  | 650.124.5234       | 1987-07-16 | ST_CLERK   |  3300.00 |           0.00 |        121 |            50 |
|         178 | Kimberely   | Grant       | KGRANT   | 011.44.1644.429263 | 1987-09-03 | SA_REP     |  7000.00 |           0.15 |        149 |             0 |
|         135 | Ki          | Gee         | KGEE     | 650.127.1734       | 1987-07-22 | ST_CLERK   |  2400.00 |           0.00 |        122 |            50 |
|         124 | Kevin       | Mourgos     | KMOURGOS | 650.123.5234       | 1987-07-11 | ST_MAN     |  5800.00 |           0.00 |        100 |            50 |
|         197 | Kevin       | Feeney      | KFEENEY  | 650.507.9822       | 1987-09-22 | SH_CLERK   |  3000.00 |           0.00 |        124 |            50 |
|         188 | Kelly       | Chung       | KCHUNG   | 650.505.1876       | 1987-09-13 | SH_CLERK   |  3800.00 |           0.00 |        122 |            50 |
|         119 | Karen       | Colmenares  | KCOLMENA | 515.127.4566       | 1987-07-06 | PU_CLERK   |  2500.00 |           0.00 |        114 |            30 |
|         146 | Karen       | Partners    | KPARTNER | 011.44.1344.467268 | 1987-08-02 | SA_MAN     | 13500.00 |           0.30 |        100 |            80 |
|         125 | Julia       | Nayer       | JNAYER   | 650.124.1214       | 1987-07-12 | ST_CLERK   |  3200.00 |           0.00 |        120 |            50 |
|         186 | Julia       | Dellinger   | JDELLING | 650.509.3876       | 1987-09-11 | SH_CLERK   |  3400.00 |           0.00 |        121 |            50 |
|         140 | Joshua      | Patel       | JPATEL   | 650.121.1834       | 1987-07-27 | ST_CLERK   |  2500.00 |           0.00 |        123 |            50 |
|         112 | Jose Manuel | Urman       | JMURMAN  | 515.124.4469       | 1987-06-29 | FI_ACCOUNT |  7800.00 |           0.00 |        108 |           100 |
|         176 | Jonathon    | Taylor      | JTAYLOR  | 011.44.1644.429265 | 1987-09-01 | SA_REP     |  8600.00 |           0.20 |        149 |            80 |
|         110 | John        | Chen        | JCHEN    | 515.124.4269       | 1987-06-27 | FI_ACCOUNT |  8200.00 |           0.00 |        108 |           100 |
|         139 | John        | Seo         | JSEO     | 650.121.2019       | 1987-07-26 | ST_CLERK   |  2700.00 |           0.00 |        123 |            50 |
|         145 | John        | Russell     | JRUSSEL  | 011.44.1344.429268 | 1987-08-01 | SA_MAN     | 14000.00 |           0.40 |        100 |            80 |
|         189 | Jennifer    | Dilly       | JDILLY   | 650.505.2876       | 1987-09-14 | SH_CLERK   |  3600.00 |           0.00 |        122 |            50 |
|         200 | Jennifer    | Whalen      | JWHALEN  | 515.123.4444       | 1987-09-25 | AD_ASST    |  4400.00 |           0.00 |        101 |            10 |
|         181 | Jean        | Fleaur      | JFLEAUR  | 650.507.9877       | 1987-09-06 | SH_CLERK   |  3100.00 |           0.00 |        120 |            50 |
|         133 | Jason       | Mallin      | JMALLIN  | 650.127.1934       | 1987-07-20 | ST_CLERK   |  3300.00 |           0.00 |        122 |            50 |
|         156 | Janette     | King        | JKING    | 011.44.1345.429268 | 1987-08-12 | SA_REP     | 10000.00 |           0.35 |        146 |            80 |
|         127 | James       | Landry      | JLANDRY  | 650.124.1334       | 1987-07-14 | ST_CLERK   |  2400.00 |           0.00 |        120 |            50 |
|         131 | James       | Marlow      | JAMRLOW  | 650.124.7234       | 1987-07-18 | ST_CLERK   |  2500.00 |           0.00 |        121 |            50 |
|         177 | Jack        | Livingston  | JLIVINGS | 011.44.1644.429264 | 1987-09-02 | SA_REP     |  8400.00 |           0.20 |        149 |            80 |
|         111 | Ismael      | Sciarra     | ISCIARRA | 515.124.4369       | 1987-06-28 | FI_ACCOUNT |  7700.00 |           0.00 |        108 |           100 |
|         126 | Irene       | Mikkilineni | IMIKKILI | 650.124.1224       | 1987-07-13 | ST_CLERK   |  2700.00 |           0.00 |        120 |            50 |
|         204 | Hermann     | Baer        | HBAER    | 515.123.8888       | 1987-09-29 | PR_REP     | 10000.00 |           0.00 |        101 |            70 |
|         136 | Hazel       | Philtanker  | HPHILTAN | 650.127.1634       | 1987-07-23 | ST_CLERK   |  2200.00 |           0.00 |        122 |            50 |
|         169 | Harrison    | Bloom       | HBLOOM   | 011.44.1343.829268 | 1987-08-25 | SA_REP     | 10000.00 |           0.20 |        148 |            80 |
|         118 | Guy         | Himuro      | GHIMURO  | 515.127.4565       | 1987-07-05 | PU_CLERK   |  2600.00 |           0.00 |        114 |            30 |
|         183 | Girard      | Geoni       | GGEONI   | 650.507.9879       | 1987-09-08 | SH_CLERK   |  2800.00 |           0.00 |        120 |            50 |
|         148 | Gerald      | Cambrault   | GCAMBRAU | 011.44.1344.619268 | 1987-08-04 | SA_MAN     | 11000.00 |           0.30 |        100 |            80 |
|         174 | Ellen       | Abel        | EABEL    | 011.44.1644.429267 | 1987-08-30 | SA_REP     | 11000.00 |           0.30 |        149 |            80 |
|         172 | Elizabeth   | Bates       | EBATES   | 011.44.1343.529268 | 1987-08-28 | SA_REP     |  7300.00 |           0.15 |        148 |            80 |
|         149 | Eleni       | Zlotkey     | EZLOTKEY | 011.44.1344.429018 | 1987-08-05 | SA_MAN     | 10500.00 |           0.20 |        100 |            80 |
|         199 | Douglas     | Grant       | DGRANT   | 650.507.9844       | 1987-09-24 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         198 | Donald      | OConnell    | DOCONNEL | 650.507.9833       | 1987-09-23 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         107 | Diana       | Lorentz     | DLORENTZ | 590.423.5567       | 1987-06-24 | IT_PROG    |  4200.00 |           0.00 |        103 |            60 |
|         114 | Den         | Raphaely    | DRAPHEAL | 515.127.4561       | 1987-07-01 | PU_MAN     | 11000.00 |           0.00 |        100 |            30 |
|         105 | David       | Austin      | DAUSTIN  | 590.423.4569       | 1987-06-22 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |
|         151 | David       | Bernstein   | DBERNSTE | 011.44.1344.345268 | 1987-08-07 | SA_REP     |  9500.00 |           0.25 |        145 |            80 |
|         165 | David       | Lee         | DLEE     | 011.44.1346.529268 | 1987-08-21 | SA_REP     |  6800.00 |           0.10 |        147 |            80 |
|         163 | Danielle    | Greene      | DGREENE  | 011.44.1346.229268 | 1987-08-19 | SA_REP     |  9500.00 |           0.15 |        147 |            80 |
|         109 | Daniel      | Faviet      | DFAVIET  | 515.124.4169       | 1987-06-26 | FI_ACCOUNT |  9000.00 |           0.00 |        108 |           100 |
|         142 | Curtis      | Davies      | CDAVIES  | 650.121.2994       | 1987-07-29 | ST_CLERK   |  3100.00 |           0.00 |        124 |            50 |
|         162 | Clara       | Vishney     | CVISHNEY | 011.44.1346.129268 | 1987-08-18 | SA_REP     | 10500.00 |           0.25 |        147 |            80 |
|         153 | Christopher | Olsen       | COLSEN   | 011.44.1344.498718 | 1987-08-09 | SA_REP     |  8000.00 |           0.20 |        145 |            80 |
|         179 | Charles     | Johnson     | CJOHNSON | 011.44.1644.429262 | 1987-09-04 | SA_REP     |  6200.00 |           0.10 |        149 |            80 |
|         104 | Bruce       | Ernst       | BERNST   | 590.423.4568       | 1987-06-21 | IT_PROG    |  6000.00 |           0.00 |        103 |            60 |
|         193 | Britney     | Everett     | BEVERETT | 650.501.2876       | 1987-09-18 | SH_CLERK   |  3900.00 |           0.00 |        123 |            50 |
|         187 | Anthony     | Cabrio      | ACABRIO  | 650.509.4876       | 1987-09-12 | SH_CLERK   |  3000.00 |           0.00 |        121 |            50 |
|         167 | Amit        | Banda       | ABANDA   | 011.44.1346.729268 | 1987-08-23 | SA_REP     |  6200.00 |           0.10 |        147 |            80 |
|         175 | Alyssa      | Hutton      | AHUTTON  | 011.44.1644.429266 | 1987-08-31 | SA_REP     |  8800.00 |           0.25 |        149 |            80 |
|         158 | Allan       | McEwen      | AMCEWEN  | 011.44.1345.829268 | 1987-08-14 | SA_REP     |  9000.00 |           0.35 |        146 |            80 |
|         185 | Alexis      | Bull        | ABULL    | 650.509.2876       | 1987-09-10 | SH_CLERK   |  4100.00 |           0.00 |        121 |            50 |
|         103 | Alexander   | Hunold      | AHUNOLD  | 590.423.4567       | 1987-06-20 | IT_PROG    |  9000.00 |           0.00 |        102 |            60 |
|         115 | Alexander   | Khoo        | AKHOO    | 515.127.4562       | 1987-07-02 | PU_CLERK   |  3100.00 |           0.00 |        114 |            30 |
|         147 | Alberto     | Errazuriz   | AERRAZUR | 011.44.1344.429278 | 1987-08-03 | SA_MAN     | 12000.00 |           0.30 |        100 |            80 |
|         196 | Alana       | Walsh       | AWALSH   | 650.507.9811       | 1987-09-21 | SH_CLERK   |  3100.00 |           0.00 |        124 |            50 |
|         121 | Adam        | Fripp       | AFRIPP   | 650.123.2234       | 1987-07-08 | ST_MAN     |  8200.00 |           0.00 |        100 |            50 |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
107 rows in set (0.00 sec)

Q9. Write a query to get the employee ID, names (first_name, last_name),salary in ascending order of salary.
Ans: -
D4_56327>select employee_id, first_name, last_name, salary from employees order by salary;
+-------------+-------------+-------------+----------+
| employee_id | first_name  | last_name   | salary   |
+-------------+-------------+-------------+----------+
|         132 | TJ          | Olson       |  2100.00 |
|         128 | Steven      | Markle      |  2200.00 |
|         136 | Hazel       | Philtanker  |  2200.00 |
|         127 | James       | Landry      |  2400.00 |
|         135 | Ki          | Gee         |  2400.00 |
|         119 | Karen       | Colmenares  |  2500.00 |
|         131 | James       | Marlow      |  2500.00 |
|         140 | Joshua      | Patel       |  2500.00 |
|         144 | Peter       | Vargas      |  2500.00 |
|         182 | Martha      | Sullivan    |  2500.00 |
|         191 | Randall     | Perkins     |  2500.00 |
|         118 | Guy         | Himuro      |  2600.00 |
|         143 | Randall     | Matos       |  2600.00 |
|         198 | Donald      | OConnell    |  2600.00 |
|         199 | Douglas     | Grant       |  2600.00 |
|         126 | Irene       | Mikkilineni |  2700.00 |
|         139 | John        | Seo         |  2700.00 |
|         117 | Sigal       | Tobias      |  2800.00 |
|         130 | Mozhe       | Atkinson    |  2800.00 |
|         183 | Girard      | Geoni       |  2800.00 |
|         195 | Vance       | Jones       |  2800.00 |
|         116 | Shelli      | Baida       |  2900.00 |
|         134 | Michael     | Rogers      |  2900.00 |
|         190 | Timothy     | Gates       |  2900.00 |
|         187 | Anthony     | Cabrio      |  3000.00 |
|         197 | Kevin       | Feeney      |  3000.00 |
|         115 | Alexander   | Khoo        |  3100.00 |
|         142 | Curtis      | Davies      |  3100.00 |
|         181 | Jean        | Fleaur      |  3100.00 |
|         196 | Alana       | Walsh       |  3100.00 |
|         125 | Julia       | Nayer       |  3200.00 |
|         138 | Stephen     | Stiles      |  3200.00 |
|         180 | Winston     | Taylor      |  3200.00 |
|         194 | Samuel      | McCain      |  3200.00 |
|         129 | Laura       | Bissot      |  3300.00 |
|         133 | Jason       | Mallin      |  3300.00 |
|         186 | Julia       | Dellinger   |  3400.00 |
|         141 | Trenna      | Rajs        |  3500.00 |
|         137 | Renske      | Ladwig      |  3600.00 |
|         189 | Jennifer    | Dilly       |  3600.00 |
|         188 | Kelly       | Chung       |  3800.00 |
|         193 | Britney     | Everett     |  3900.00 |
|         192 | Sarah       | Bell        |  4000.00 |
|         185 | Alexis      | Bull        |  4100.00 |
|         107 | Diana       | Lorentz     |  4200.00 |
|         184 | Nandita     | Sarchand    |  4200.00 |
|         200 | Jennifer    | Whalen      |  4400.00 |
|         105 | David       | Austin      |  4800.00 |
|         106 | Valli       | Pataballa   |  4800.00 |
|         124 | Kevin       | Mourgos     |  5800.00 |
|         104 | Bruce       | Ernst       |  6000.00 |
|         202 | Pat         | Fay         |  6000.00 |
|         173 | Sundita     | Kumar       |  6100.00 |
|         167 | Amit        | Banda       |  6200.00 |
|         179 | Charles     | Johnson     |  6200.00 |
|         166 | Sundar      | Ande        |  6400.00 |
|         123 | Shanta      | Vollman     |  6500.00 |
|         203 | Susan       | Mavris      |  6500.00 |
|         165 | David       | Lee         |  6800.00 |
|         113 | Luis        | Popp        |  6900.00 |
|         155 | Oliver      | Tuvault     |  7000.00 |
|         161 | Sarath      | Sewall      |  7000.00 |
|         178 | Kimberely   | Grant       |  7000.00 |
|         164 | Mattea      | Marvins     |  7200.00 |
|         172 | Elizabeth   | Bates       |  7300.00 |
|         171 | William     | Smith       |  7400.00 |
|         154 | Nanette     | Cambrault   |  7500.00 |
|         160 | Louise      | Doran       |  7500.00 |
|         111 | Ismael      | Sciarra     |  7700.00 |
|         112 | Jose Manuel | Urman       |  7800.00 |
|         122 | Payam       | Kaufling    |  7900.00 |
|         120 | Matthew     | Weiss       |  8000.00 |
|         153 | Christopher | Olsen       |  8000.00 |
|         159 | Lindsey     | Smith       |  8000.00 |
|         110 | John        | Chen        |  8200.00 |
|         121 | Adam        | Fripp       |  8200.00 |
|         206 | William     | Gietz       |  8300.00 |
|         177 | Jack        | Livingston  |  8400.00 |
|         176 | Jonathon    | Taylor      |  8600.00 |
|         175 | Alyssa      | Hutton      |  8800.00 |
|         103 | Alexander   | Hunold      |  9000.00 |
|         109 | Daniel      | Faviet      |  9000.00 |
|         152 | Peter       | Hall        |  9000.00 |
|         158 | Allan       | McEwen      |  9000.00 |
|         151 | David       | Bernstein   |  9500.00 |
|         157 | Patrick     | Sully       |  9500.00 |
|         163 | Danielle    | Greene      |  9500.00 |
|         170 | Tayler      | Fox         |  9600.00 |
|         150 | Peter       | Tucker      | 10000.00 |
|         156 | Janette     | King        | 10000.00 |
|         169 | Harrison    | Bloom       | 10000.00 |
|         204 | Hermann     | Baer        | 10000.00 |
|         149 | Eleni       | Zlotkey     | 10500.00 |
|         162 | Clara       | Vishney     | 10500.00 |
|         114 | Den         | Raphaely    | 11000.00 |
|         148 | Gerald      | Cambrault   | 11000.00 |
|         174 | Ellen       | Abel        | 11000.00 |
|         168 | Lisa        | Ozer        | 11500.00 |
|         108 | Nancy       | Greenberg   | 12000.00 |
|         147 | Alberto     | Errazuriz   | 12000.00 |
|         205 | Shelley     | Higgins     | 12000.00 |
|         201 | Michael     | Hartstein   | 13000.00 |
|         146 | Karen       | Partners    | 13500.00 |
|         145 | John        | Russell     | 14000.00 |
|         101 | Neena       | Kochhar     | 17000.00 |
|         102 | Lex         | De Haan     | 17000.00 |
|         100 | Steven      | King        | 24000.00 |
+-------------+-------------+-------------+----------+
107 rows in set (0.00 sec)

Q10. Display first name and join date of the employees who is either IT Programmer or Sales Man.
Ans: -
D4_56327>select first_name, hire_date from employees where job_id in('sa_man','it_prog');
+------------+------------+
| first_name | hire_date  |
+------------+------------+
| Alexander  | 1987-06-20 |
| Bruce      | 1987-06-21 |
| David      | 1987-06-22 |
| Valli      | 1987-06-23 |
| Diana      | 1987-06-24 |
| John       | 1987-08-01 |
| Karen      | 1987-08-02 |
| Alberto    | 1987-08-03 |
| Gerald     | 1987-08-04 |
| Eleni      | 1987-08-05 |
+------------+------------+
10 rows in set (0.05 sec)

Q11. Display details of employee with ID 150 or 160.
Ans: -
D4_56327>select * from employees where employee_id in(150,160);
+-------------+------------+-----------+---------+--------------------+------------+--------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | EMAIL   | PHONE_NUMBER       | HIRE_DATE  | JOB_ID | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-----------+---------+--------------------+------------+--------+----------+----------------+------------+---------------+
|         150 | Peter      | Tucker    | PTUCKER | 011.44.1344.129268 | 1987-08-06 | SA_REP | 10000.00 |           0.30 |        145 |            80 |
|         160 | Louise     | Doran     | LDORAN  | 011.44.1345.629268 | 1987-08-16 | SA_REP |  7500.00 |           0.30 |        146 |            80 |
+-------------+------------+-----------+---------+--------------------+------------+--------+----------+----------------+------------+---------------+
2 rows in set (0.00 sec)

Q12. Display first name, salary, commission pct, and hire date for employees with salary less than 10000.
Ans: -
D4_56327>select first_name, salary, commission_pct, hire_date from employees where salary<10000;
+-------------+---------+----------------+------------+
| first_name  | salary  | commission_pct | hire_date  |
+-------------+---------+----------------+------------+
| Alexander   | 9000.00 |           0.00 | 1987-06-20 |
| Bruce       | 6000.00 |           0.00 | 1987-06-21 |
| David       | 4800.00 |           0.00 | 1987-06-22 |
| Valli       | 4800.00 |           0.00 | 1987-06-23 |
| Diana       | 4200.00 |           0.00 | 1987-06-24 |
| Daniel      | 9000.00 |           0.00 | 1987-06-26 |
| John        | 8200.00 |           0.00 | 1987-06-27 |
| Ismael      | 7700.00 |           0.00 | 1987-06-28 |
| Jose Manuel | 7800.00 |           0.00 | 1987-06-29 |
| Luis        | 6900.00 |           0.00 | 1987-06-30 |
| Alexander   | 3100.00 |           0.00 | 1987-07-02 |
| Shelli      | 2900.00 |           0.00 | 1987-07-03 |
| Sigal       | 2800.00 |           0.00 | 1987-07-04 |
| Guy         | 2600.00 |           0.00 | 1987-07-05 |
| Karen       | 2500.00 |           0.00 | 1987-07-06 |
| Matthew     | 8000.00 |           0.00 | 1987-07-07 |
| Adam        | 8200.00 |           0.00 | 1987-07-08 |
| Payam       | 7900.00 |           0.00 | 1987-07-09 |
| Shanta      | 6500.00 |           0.00 | 1987-07-10 |
| Kevin       | 5800.00 |           0.00 | 1987-07-11 |
| Julia       | 3200.00 |           0.00 | 1987-07-12 |
| Irene       | 2700.00 |           0.00 | 1987-07-13 |
| James       | 2400.00 |           0.00 | 1987-07-14 |
| Steven      | 2200.00 |           0.00 | 1987-07-15 |
| Laura       | 3300.00 |           0.00 | 1987-07-16 |
| Mozhe       | 2800.00 |           0.00 | 1987-07-17 |
| James       | 2500.00 |           0.00 | 1987-07-18 |
| TJ          | 2100.00 |           0.00 | 1987-07-19 |
| Jason       | 3300.00 |           0.00 | 1987-07-20 |
| Michael     | 2900.00 |           0.00 | 1987-07-21 |
| Ki          | 2400.00 |           0.00 | 1987-07-22 |
| Hazel       | 2200.00 |           0.00 | 1987-07-23 |
| Renske      | 3600.00 |           0.00 | 1987-07-24 |
| Stephen     | 3200.00 |           0.00 | 1987-07-25 |
| John        | 2700.00 |           0.00 | 1987-07-26 |
| Joshua      | 2500.00 |           0.00 | 1987-07-27 |
| Trenna      | 3500.00 |           0.00 | 1987-07-28 |
| Curtis      | 3100.00 |           0.00 | 1987-07-29 |
| Randall     | 2600.00 |           0.00 | 1987-07-30 |
| Peter       | 2500.00 |           0.00 | 1987-07-31 |
| David       | 9500.00 |           0.25 | 1987-08-07 |
| Peter       | 9000.00 |           0.25 | 1987-08-08 |
| Christopher | 8000.00 |           0.20 | 1987-08-09 |
| Nanette     | 7500.00 |           0.20 | 1987-08-10 |
| Oliver      | 7000.00 |           0.15 | 1987-08-11 |
| Patrick     | 9500.00 |           0.35 | 1987-08-13 |
| Allan       | 9000.00 |           0.35 | 1987-08-14 |
| Lindsey     | 8000.00 |           0.30 | 1987-08-15 |
| Louise      | 7500.00 |           0.30 | 1987-08-16 |
| Sarath      | 7000.00 |           0.25 | 1987-08-17 |
| Danielle    | 9500.00 |           0.15 | 1987-08-19 |
| Mattea      | 7200.00 |           0.10 | 1987-08-20 |
| David       | 6800.00 |           0.10 | 1987-08-21 |
| Sundar      | 6400.00 |           0.10 | 1987-08-22 |
| Amit        | 6200.00 |           0.10 | 1987-08-23 |
| Tayler      | 9600.00 |           0.20 | 1987-08-26 |
| William     | 7400.00 |           0.15 | 1987-08-27 |
| Elizabeth   | 7300.00 |           0.15 | 1987-08-28 |
| Sundita     | 6100.00 |           0.10 | 1987-08-29 |
| Alyssa      | 8800.00 |           0.25 | 1987-08-31 |
| Jonathon    | 8600.00 |           0.20 | 1987-09-01 |
| Jack        | 8400.00 |           0.20 | 1987-09-02 |
| Kimberely   | 7000.00 |           0.15 | 1987-09-03 |
| Charles     | 6200.00 |           0.10 | 1987-09-04 |
| Winston     | 3200.00 |           0.00 | 1987-09-05 |
| Jean        | 3100.00 |           0.00 | 1987-09-06 |
| Martha      | 2500.00 |           0.00 | 1987-09-07 |
| Girard      | 2800.00 |           0.00 | 1987-09-08 |
| Nandita     | 4200.00 |           0.00 | 1987-09-09 |
| Alexis      | 4100.00 |           0.00 | 1987-09-10 |
| Julia       | 3400.00 |           0.00 | 1987-09-11 |
| Anthony     | 3000.00 |           0.00 | 1987-09-12 |
| Kelly       | 3800.00 |           0.00 | 1987-09-13 |
| Jennifer    | 3600.00 |           0.00 | 1987-09-14 |
| Timothy     | 2900.00 |           0.00 | 1987-09-15 |
| Randall     | 2500.00 |           0.00 | 1987-09-16 |
| Sarah       | 4000.00 |           0.00 | 1987-09-17 |
| Britney     | 3900.00 |           0.00 | 1987-09-18 |
| Samuel      | 3200.00 |           0.00 | 1987-09-19 |
| Vance       | 2800.00 |           0.00 | 1987-09-20 |
| Alana       | 3100.00 |           0.00 | 1987-09-21 |
| Kevin       | 3000.00 |           0.00 | 1987-09-22 |
| Donald      | 2600.00 |           0.00 | 1987-09-23 |
| Douglas     | 2600.00 |           0.00 | 1987-09-24 |
| Jennifer    | 4400.00 |           0.00 | 1987-09-25 |
| Pat         | 6000.00 |           0.00 | 1987-09-27 |
| Susan       | 6500.00 |           0.00 | 1987-09-28 |
| William     | 8300.00 |           0.00 | 1987-10-01 |
+-------------+---------+----------------+------------+
88 rows in set (0.05 sec)

Q13. Display details of jobs in the descending order of the title.
Ans: -
D4_56327>select * from jobs order by job_title desc;
+------------+---------------------------------+------------+------------+
| JOB_ID     | JOB_TITLE                       | MIN_SALARY | MAX_SALARY |
+------------+---------------------------------+------------+------------+
| ST_MAN     | Stock Manager                   |       5500 |       8500 |
| ST_CLERK   | Stock Clerk                     |       2000 |       5000 |
| SH_CLERK   | Shipping Clerk                  |       2500 |       5500 |
| SA_REP     | Sales Representative            |       6000 |      12000 |
| SA_MAN     | Sales Manager                   |      10000 |      20000 |
| PU_MAN     | Purchasing Manager              |       8000 |      15000 |
| PU_CLERK   | Purchasing Clerk                |       2500 |       5500 |
| PR_REP     | Public Relations Representative |       4500 |      10500 |
| AC_ACCOUNT | Public Accountant               |       4200 |       9000 |
| IT_PROG    | Programmer                      |       4000 |      10000 |
| AD_PRES    | President                       |      20000 |      40000 |
| MK_REP     | Marketing Representative        |       4000 |       9000 |
| MK_MAN     | Marketing Manager               |       9000 |      15000 |
| HR_REP     | Human Resources Representative  |       4000 |       9000 |
| FI_MGR     | Finance Manager                 |       8200 |      16000 |
| AD_VP      | Administration Vice President   |      15000 |      30000 |
| AD_ASST    | Administration Assistant        |       3000 |       6000 |
| AC_MGR     | Accounting Manager              |       8200 |      16000 |
| FI_ACCOUNT | Accountant                      |       4200 |       9000 |
+------------+---------------------------------+------------+------------+
19 rows in set (0.00 sec)

Q14. Display details of the employees where commission percentage is null and salary in the range 5000 to 10000 and department is 30.
Ans: -
D4_56327>select * from employees where commission_pct is null and salary between 5000 and 10000 and department_id = 30;
Empty set (0.00 sec)

Q15. Display employees first_name,email who are working in "Executive" department.
Ans: -
D4_56327>select first_name, email from employees where department_id = 90;
+------------+----------+
| first_name | email    |
+------------+----------+
| Steven     | SKING    |
| Neena      | NKOCHHAR |
| Lex        | LDEHAAN  |
+------------+----------+
3 rows in set (0.00 sec)

Q16. Display unique contry_id from locations table.
Ans: -
4_56327>select distinct country_id from locations;
+------------+
| country_id |
+------------+
| ""         |
| AU         |
| BR         |
| CA         |
| CH         |
| CN         |
| DE         |
| IN         |
| IT         |
| JP         |
| NL         |
| Ox         |
| SG         |
| UK         |
| US         |
+------------+
15 rows in set (0.02 sec)

Q17. Display all employees whose have job_id IT_PROG and FI_ACCOUNT.
Ans: -
D4_56327>select * from employees where job_id in('it_prog','fi_account');
+-------------+-------------+-----------+----------+--------------+------------+------------+---------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME  | LAST_NAME | EMAIL    | PHONE_NUMBER | HIRE_DATE  | JOB_ID     | SALARY  | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+-------------+-----------+----------+--------------+------------+------------+---------+----------------+------------+---------------+
|         109 | Daniel      | Faviet    | DFAVIET  | 515.124.4169 | 1987-06-26 | FI_ACCOUNT | 9000.00 |           0.00 |        108 |           100 |
|         110 | John        | Chen      | JCHEN    | 515.124.4269 | 1987-06-27 | FI_ACCOUNT | 8200.00 |           0.00 |        108 |           100 |
|         111 | Ismael      | Sciarra   | ISCIARRA | 515.124.4369 | 1987-06-28 | FI_ACCOUNT | 7700.00 |           0.00 |        108 |           100 |
|         112 | Jose Manuel | Urman     | JMURMAN  | 515.124.4469 | 1987-06-29 | FI_ACCOUNT | 7800.00 |           0.00 |        108 |           100 |
|         113 | Luis        | Popp      | LPOPP    | 515.124.4567 | 1987-06-30 | FI_ACCOUNT | 6900.00 |           0.00 |        108 |           100 |
|         103 | Alexander   | Hunold    | AHUNOLD  | 590.423.4567 | 1987-06-20 | IT_PROG    | 9000.00 |           0.00 |        102 |            60 |
|         104 | Bruce       | Ernst     | BERNST   | 590.423.4568 | 1987-06-21 | IT_PROG    | 6000.00 |           0.00 |        103 |            60 |
|         105 | David       | Austin    | DAUSTIN  | 590.423.4569 | 1987-06-22 | IT_PROG    | 4800.00 |           0.00 |        103 |            60 |
|         106 | Valli       | Pataballa | VPATABAL | 590.423.4560 | 1987-06-23 | IT_PROG    | 4800.00 |           0.00 |        103 |            60 |
|         107 | Diana       | Lorentz   | DLORENTZ | 590.423.5567 | 1987-06-24 | IT_PROG    | 4200.00 |           0.00 |        103 |            60 |
+-------------+-------------+-----------+----------+--------------+------------+------------+---------+----------------+------------+---------------+
10 rows in set (0.00 sec)

Q18. Display all countries in ascending order.
Ans: -
D4_56327>select * from countries order by country_name;
+------------+--------------------------+-----------+
| COUNTRY_ID | COUNTRY_NAME             | REGION_ID |
+------------+--------------------------+-----------+
| AR         | Argentina                |         2 |
| AU         | Australia                |         3 |
| BE         | Belgium                  |         1 |
| BR         | Brazil                   |         2 |
| CA         | Canada                   |         2 |
| CN         | China                    |         3 |
| DK         | Denmark                  |         1 |
| EG         | Egypt                    |         4 |
| FR         | France                   |         1 |
| DE         | Germany                  |         1 |
| HK         | HongKong                 |         3 |
| IN         | India                    |         3 |
| IL         | Israel                   |         4 |
| IT         | Italy                    |         1 |
| JP         | Japan                    |         3 |
| KW         | Kuwait                   |         4 |
| MX         | Mexico                   |         2 |
| NL         | Netherlands              |         1 |
| NG         | Nigeria                  |         4 |
| SG         | Singapore                |         3 |
| CH         | Switzerland              |         1 |
| UK         | United Kingdom           |         1 |
| US         | United States of America |         2 |
| ZM         | Zambia                   |         4 |
| ZW         | Zimbabwe                 |         4 |
+------------+--------------------------+-----------+
25 rows in set (0.00 sec)

Q19. Display employees where first name or last name start with S.
Ans: -
D4_56327>select * from employees where first_name like 's%' or last_name like 'S%';
+-------------+------------+-----------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-----------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
|         100 | Steven     | King      | SKING    | 515.123.4567       | 1987-06-17 | AD_PRES    | 24000.00 |           0.00 |          0 |            90 |
|         111 | Ismael     | Sciarra   | ISCIARRA | 515.124.4369       | 1987-06-28 | FI_ACCOUNT |  7700.00 |           0.00 |        108 |           100 |
|         116 | Shelli     | Baida     | SBAIDA   | 515.127.4563       | 1987-07-03 | PU_CLERK   |  2900.00 |           0.00 |        114 |            30 |
|         117 | Sigal      | Tobias    | STOBIAS  | 515.127.4564       | 1987-07-04 | PU_CLERK   |  2800.00 |           0.00 |        114 |            30 |
|         123 | Shanta     | Vollman   | SVOLLMAN | 650.123.4234       | 1987-07-10 | ST_MAN     |  6500.00 |           0.00 |        100 |            50 |
|         128 | Steven     | Markle    | SMARKLE  | 650.124.1434       | 1987-07-15 | ST_CLERK   |  2200.00 |           0.00 |        120 |            50 |
|         138 | Stephen    | Stiles    | SSTILES  | 650.121.2034       | 1987-07-25 | ST_CLERK   |  3200.00 |           0.00 |        123 |            50 |
|         139 | John       | Seo       | JSEO     | 650.121.2019       | 1987-07-26 | ST_CLERK   |  2700.00 |           0.00 |        123 |            50 |
|         157 | Patrick    | Sully     | PSULLY   | 011.44.1345.929268 | 1987-08-13 | SA_REP     |  9500.00 |           0.35 |        146 |            80 |
|         159 | Lindsey    | Smith     | LSMITH   | 011.44.1345.729268 | 1987-08-15 | SA_REP     |  8000.00 |           0.30 |        146 |            80 |
|         161 | Sarath     | Sewall    | SSEWALL  | 011.44.1345.529268 | 1987-08-17 | SA_REP     |  7000.00 |           0.25 |        146 |            80 |
|         166 | Sundar     | Ande      | SANDE    | 011.44.1346.629268 | 1987-08-22 | SA_REP     |  6400.00 |           0.10 |        147 |            80 |
|         171 | William    | Smith     | WSMITH   | 011.44.1343.629268 | 1987-08-27 | SA_REP     |  7400.00 |           0.15 |        148 |            80 |
|         173 | Sundita    | Kumar     | SKUMAR   | 011.44.1343.329268 | 1987-08-29 | SA_REP     |  6100.00 |           0.10 |        148 |            80 |
|         182 | Martha     | Sullivan  | MSULLIVA | 650.507.9878       | 1987-09-07 | SH_CLERK   |  2500.00 |           0.00 |        120 |            50 |
|         184 | Nandita    | Sarchand  | NSARCHAN | 650.509.1876       | 1987-09-09 | SH_CLERK   |  4200.00 |           0.00 |        121 |            50 |
|         192 | Sarah      | Bell      | SBELL    | 650.501.1876       | 1987-09-17 | SH_CLERK   |  4000.00 |           0.00 |        123 |            50 |
|         194 | Samuel     | McCain    | SMCCAIN  | 650.501.3876       | 1987-09-19 | SH_CLERK   |  3200.00 |           0.00 |        123 |            50 |
|         203 | Susan      | Mavris    | SMAVRIS  | 515.123.7777       | 1987-09-28 | HR_REP     |  6500.00 |           0.00 |        101 |            40 |
|         205 | Shelley    | Higgins   | SHIGGINS | 515.123.8080       | 1987-09-30 | AC_MGR     | 12000.00 |           0.00 |        101 |           110 |
+-------------+------------+-----------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
20 rows in set (0.04 sec)

Q20. Display details of the employees where commission percentage is null and salary in the range 5000 to 10000 and department is 30.
Ans: -
D4_56327>select * from employees where commission_pct is null and salary between 5000 and 10000 and department_id = 30;
Empty set (0.00 sec)

Q21. Display all employees who have job_id IT_PROG and FI_ACCOUNT.
Ans: -
D4_56327>select * from employees where job_id in('it_prog','fi_account');
+-------------+-------------+-----------+----------+--------------+------------+------------+---------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME  | LAST_NAME | EMAIL    | PHONE_NUMBER | HIRE_DATE  | JOB_ID     | SALARY  | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+-------------+-----------+----------+--------------+------------+------------+---------+----------------+------------+---------------+
|         109 | Daniel      | Faviet    | DFAVIET  | 515.124.4169 | 1987-06-26 | FI_ACCOUNT | 9000.00 |           0.00 |        108 |           100 |
|         110 | John        | Chen      | JCHEN    | 515.124.4269 | 1987-06-27 | FI_ACCOUNT | 8200.00 |           0.00 |        108 |           100 |
|         111 | Ismael      | Sciarra   | ISCIARRA | 515.124.4369 | 1987-06-28 | FI_ACCOUNT | 7700.00 |           0.00 |        108 |           100 |
|         112 | Jose Manuel | Urman     | JMURMAN  | 515.124.4469 | 1987-06-29 | FI_ACCOUNT | 7800.00 |           0.00 |        108 |           100 |
|         113 | Luis        | Popp      | LPOPP    | 515.124.4567 | 1987-06-30 | FI_ACCOUNT | 6900.00 |           0.00 |        108 |           100 |
|         103 | Alexander   | Hunold    | AHUNOLD  | 590.423.4567 | 1987-06-20 | IT_PROG    | 9000.00 |           0.00 |        102 |            60 |
|         104 | Bruce       | Ernst     | BERNST   | 590.423.4568 | 1987-06-21 | IT_PROG    | 6000.00 |           0.00 |        103 |            60 |
|         105 | David       | Austin    | DAUSTIN  | 590.423.4569 | 1987-06-22 | IT_PROG    | 4800.00 |           0.00 |        103 |            60 |
|         106 | Valli       | Pataballa | VPATABAL | 590.423.4560 | 1987-06-23 | IT_PROG    | 4800.00 |           0.00 |        103 |            60 |
|         107 | Diana       | Lorentz   | DLORENTZ | 590.423.5567 | 1987-06-24 | IT_PROG    | 4200.00 |           0.00 |        103 |            60 |
+-------------+-------------+-----------+----------+--------------+------------+------------+---------+----------------+------------+---------------+
10 rows in set (0.00 sec)

Note: To solve below queries use “spj” database
D4_56327>use spj;
Database changed
D4_56327>select user(),database();
+--------------------+------------+
| user()             | database() |
+--------------------+------------+
| D4_56327@localhost | spj        |
+--------------------+------------+
1 row in set (0.00 sec)

Q22. Display all the Part names with weight between 12 and 14 (inclusive of both).
Ans: -
D4_56327>select pname from p where weight between 12 and 14;
+-------+
| pname |
+-------+
| Nut   |
| Screw |
| Cam   |
+-------+
3 rows in set (0.00 sec)

Q23. Display all the Suppliers except the supplier from London.
Ans: -
D4_56327>select * from s where not city = 'london';
+------+-------+--------+--------+
| S#   | Sname | Status | City   |
+------+-------+--------+--------+
| S2   | Jones |     10 | Paris  |
| S3   | Blake |     30 | Paris  |
| S5   | Adams |     30 | Athens |
+------+-------+--------+--------+
3 rows in set (0.00 sec)

Q24. Display all the suppliers with a status between 10 and 20.
Ans: -
D4_56327>select * from s where status between 10 and 20;
+------+-------+--------+--------+
| S#   | Sname | Status | City   |
+------+-------+--------+--------+
| S1   | Smith |     20 | London |
| S2   | Jones |     10 | Paris  |
| S4   | Clark |     20 | London |
+------+-------+--------+--------+
3 rows in set (0.00 sec)

Q25. Display PNAME and COLOR from the P table for the city London.
Ans: -
D4_56327>select pname, color from p where city = 'london';
+-------+-------+
| pname | color |
+-------+-------+
| Nut   | Red   |
| Screw | Red   |
| Cog   | Red   |
+-------+-------+
3 rows in set (0.00 sec)

Q26. Display all the suppliers from London.
Ans: -
D4_56327>select * from s where city = 'london';
+------+-------+--------+--------+
| S#   | Sname | Status | City   |
+------+-------+--------+--------+
| S1   | Smith |     20 | London |
| S4   | Clark |     20 | London |
+------+-------+--------+--------+
2 rows in set (0.00 sec)

Q27. Display all suppliers from Paris or London.
Ans: -
D4_56327>select * from s where city in ('london','paris');
+------+-------+--------+--------+
| S#   | Sname | Status | City   |
+------+-------+--------+--------+
| S1   | Smith |     20 | London |
| S2   | Jones |     10 | Paris  |
| S3   | Blake |     30 | Paris  |
| S4   | Clark |     20 | London |
+------+-------+--------+--------+
4 rows in set (0.00 sec)

Q28. Display all project in Athens.
Ans: -
D4_56327>select * from j where city = 'athens';
+------+---------+--------+
| J#   | Jname   | City   |
+------+---------+--------+
| J3   | Reader  | Athens |
| J4   | Console | Athens |
+------+---------+--------+
2 rows in set (0.00 sec)