1. Write a query to display the first_name, last_name using alias name “First Name", 
"Last Name"

d2_56660>SELECT FIRST_NAME 'Fist Name',LAST_NAME 'Last Name' FROM employees;
+-------------+-------------+
| Fist Name   | Last Name   |
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
107 rows in set (0.05 sec)


2. Write a query to get the names (first_name, last_name), salary, PF of all the 
employees (PF is calculated as 15% of salary).

d2_56660>SELECT CONCAT( FIRST_NAME,' ' ,LAST_NAME) AS NAME,SALARY ,SALARY*0.15 PF FROM employees;
+-------------------+----------+-----------+
| NAME              | SALARY   | PF        |
+-------------------+----------+-----------+
| Steven King       | 24000.00 | 3600.0000 |
| Neena Kochhar     | 17000.00 | 2550.0000 |
| Lex De Haan       | 17000.00 | 2550.0000 |
| Alexander Hunold  |  9000.00 | 1350.0000 |
| Bruce Ernst       |  6000.00 |  900.0000 |
| David Austin      |  4800.00 |  720.0000 |
| Valli Pataballa   |  4800.00 |  720.0000 |
| Diana Lorentz     |  4200.00 |  630.0000 |
| Nancy Greenberg   | 12000.00 | 1800.0000 |
| Daniel Faviet     |  9000.00 | 1350.0000 |
| John Chen         |  8200.00 | 1230.0000 |
| Ismael Sciarra    |  7700.00 | 1155.0000 |
| Jose Manuel Urman |  7800.00 | 1170.0000 |
| Luis Popp         |  6900.00 | 1035.0000 |
| Den Raphaely      | 11000.00 | 1650.0000 |
| Alexander Khoo    |  3100.00 |  465.0000 |
| Shelli Baida      |  2900.00 |  435.0000 |
| Sigal Tobias      |  2800.00 |  420.0000 |
| Guy Himuro        |  2600.00 |  390.0000 |
| Karen Colmenares  |  2500.00 |  375.0000 |
| Matthew Weiss     |  8000.00 | 1200.0000 |
| Adam Fripp        |  8200.00 | 1230.0000 |
| Payam Kaufling    |  7900.00 | 1185.0000 |
| Shanta Vollman    |  6500.00 |  975.0000 |
| Kevin Mourgos     |  5800.00 |  870.0000 |
| Julia Nayer       |  3200.00 |  480.0000 |
| Irene Mikkilineni |  2700.00 |  405.0000 |
| James Landry      |  2400.00 |  360.0000 |
| Steven Markle     |  2200.00 |  330.0000 |
| Laura Bissot      |  3300.00 |  495.0000 |
| Mozhe Atkinson    |  2800.00 |  420.0000 |
| James Marlow      |  2500.00 |  375.0000 |
| TJ Olson          |  2100.00 |  315.0000 |
| Jason Mallin      |  3300.00 |  495.0000 |
| Michael Rogers    |  2900.00 |  435.0000 |
| Ki Gee            |  2400.00 |  360.0000 |
| Hazel Philtanker  |  2200.00 |  330.0000 |
| Renske Ladwig     |  3600.00 |  540.0000 |
| Stephen Stiles    |  3200.00 |  480.0000 |
| John Seo          |  2700.00 |  405.0000 |
| Joshua Patel      |  2500.00 |  375.0000 |
| Trenna Rajs       |  3500.00 |  525.0000 |
| Curtis Davies     |  3100.00 |  465.0000 |
| Randall Matos     |  2600.00 |  390.0000 |
| Peter Vargas      |  2500.00 |  375.0000 |
| John Russell      | 14000.00 | 2100.0000 |
| Karen Partners    | 13500.00 | 2025.0000 |
| Alberto Errazuriz | 12000.00 | 1800.0000 |
| Gerald Cambrault  | 11000.00 | 1650.0000 |
| Eleni Zlotkey     | 10500.00 | 1575.0000 |
| Peter Tucker      | 10000.00 | 1500.0000 |
| David Bernstein   |  9500.00 | 1425.0000 |
| Peter Hall        |  9000.00 | 1350.0000 |
| Christopher Olsen |  8000.00 | 1200.0000 |
| Nanette Cambrault |  7500.00 | 1125.0000 |
| Oliver Tuvault    |  7000.00 | 1050.0000 |
| Janette King      | 10000.00 | 1500.0000 |
| Patrick Sully     |  9500.00 | 1425.0000 |
| Allan McEwen      |  9000.00 | 1350.0000 |
| Lindsey Smith     |  8000.00 | 1200.0000 |
| Louise Doran      |  7500.00 | 1125.0000 |
| Sarath Sewall     |  7000.00 | 1050.0000 |
| Clara Vishney     | 10500.00 | 1575.0000 |
| Danielle Greene   |  9500.00 | 1425.0000 |
| Mattea Marvins    |  7200.00 | 1080.0000 |
| David Lee         |  6800.00 | 1020.0000 |
| Sundar Ande       |  6400.00 |  960.0000 |
| Amit Banda        |  6200.00 |  930.0000 |
| Lisa Ozer         | 11500.00 | 1725.0000 |
| Harrison Bloom    | 10000.00 | 1500.0000 |
| Tayler Fox        |  9600.00 | 1440.0000 |
| William Smith     |  7400.00 | 1110.0000 |
| Elizabeth Bates   |  7300.00 | 1095.0000 |
| Sundita Kumar     |  6100.00 |  915.0000 |
| Ellen Abel        | 11000.00 | 1650.0000 |
| Alyssa Hutton     |  8800.00 | 1320.0000 |
| Jonathon Taylor   |  8600.00 | 1290.0000 |
| Jack Livingston   |  8400.00 | 1260.0000 |
| Kimberely Grant   |  7000.00 | 1050.0000 |
| Charles Johnson   |  6200.00 |  930.0000 |
| Winston Taylor    |  3200.00 |  480.0000 |
| Jean Fleaur       |  3100.00 |  465.0000 |
| Martha Sullivan   |  2500.00 |  375.0000 |
| Girard Geoni      |  2800.00 |  420.0000 |
| Nandita Sarchand  |  4200.00 |  630.0000 |
| Alexis Bull       |  4100.00 |  615.0000 |
| Julia Dellinger   |  3400.00 |  510.0000 |
| Anthony Cabrio    |  3000.00 |  450.0000 |
| Kelly Chung       |  3800.00 |  570.0000 |
| Jennifer Dilly    |  3600.00 |  540.0000 |
| Timothy Gates     |  2900.00 |  435.0000 |
| Randall Perkins   |  2500.00 |  375.0000 |
| Sarah Bell        |  4000.00 |  600.0000 |
| Britney Everett   |  3900.00 |  585.0000 |
| Samuel McCain     |  3200.00 |  480.0000 |
| Vance Jones       |  2800.00 |  420.0000 |
| Alana Walsh       |  3100.00 |  465.0000 |
| Kevin Feeney      |  3000.00 |  450.0000 |
| Donald OConnell   |  2600.00 |  390.0000 |
| Douglas Grant     |  2600.00 |  390.0000 |
| Jennifer Whalen   |  4400.00 |  660.0000 |
| Michael Hartstein | 13000.00 | 1950.0000 |
| Pat Fay           |  6000.00 |  900.0000 |
| Susan Mavris      |  6500.00 |  975.0000 |
| Hermann Baer      | 10000.00 | 1500.0000 |
| Shelley Higgins   | 12000.00 | 1800.0000 |
| William Gietz     |  8300.00 | 1245.0000 |
+-------------------+----------+-----------+
107 rows in set (0.00 sec)


3. Write a query to select first 10 records from a employees table

d2_56660>SELECT * FROM employees LIMIT 10;
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

4. Write a query to display job id and job title of first 5 jobs.

d2_56660>SELECT JOB_ID,JOB_TITLE FROM jobs LIMIT 5;
+------------+-------------------------------+
| JOB_ID     | JOB_TITLE                     |
+------------+-------------------------------+
| AD_PRES    | President                     |
| AD_VP      | Administration Vice President |
| AD_ASST    | Administration Assistant      |
| FI_MGR     | Finance Manager               |
| FI_ACCOUNT | Accountant                    |
+------------+-------------------------------+
5 rows in set (0.00 sec)

5. Write a query to display location id, street address and postal code of 6 locations 
after first 3 locations

d2_56660>SELECT LOCATION_ID,STREET_ADDRESS,POSTAL_CODE FROM locations LIMIT 3,6;
+-------------+---------------------+-------------+
| LOCATION_ID | STREET_ADDRESS      | POSTAL_CODE |
+-------------+---------------------+-------------+
|        1300 | 9450 Kamiya-cho     | 6823        |
|        1400 | 2014 Jabberwocky Rd | 26192       |
|        1500 | 2011 Interiors Blvd | 99236       |
|        1600 | 2007 Zagora St      | 50090       |
|        1700 | 2004 Charade Rd     | 98199       |
|        1800 | 147 Spadina Ave     | M5V 2L7     |
+-------------+---------------------+-------------+
6 rows in set (0.00 sec)

6. Write a query to display job title and difference between max and min salary for that 
job.

d2_56660>SELECT JOB_TITLE,MAX_SALARY-MIN_SALARY DIFFERENCE FROM jobs;
+---------------------------------+------------+
| JOB_TITLE                       | DIFFERENCE |
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


7. Write a query to get unique department ID from employee table.

d2_56660>SELECT DISTINCT DEPARTMENT_ID FROM employees;
+---------------+
| DEPARTMENT_ID |
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


8. Write a query to get all employee details from the employee table order by first 
name, descending.

d2_56660>SELECT * FROM employees ORDER BY FIRST_NAME DESC;
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
107 rows in set (0.02 sec)


9. Write a query to get the employee ID, names (first_name, last_name),
salary in ascending order of salary.

d2_56660>SELECT EMPLOYEE_ID,CONCAT(FIRST_NAME,' ',LAST_NAME) NAMES FROM employees ORDER BY FIRST_NAME ;
+-------------+-------------------+
| EMPLOYEE_ID | NAMES             |
+-------------+-------------------+
|         121 | Adam Fripp        |
|         196 | Alana Walsh       |
|         147 | Alberto Errazuriz |
|         103 | Alexander Hunold  |
|         115 | Alexander Khoo    |
|         185 | Alexis Bull       |
|         158 | Allan McEwen      |
|         175 | Alyssa Hutton     |
|         167 | Amit Banda        |
|         187 | Anthony Cabrio    |
|         193 | Britney Everett   |
|         104 | Bruce Ernst       |
|         179 | Charles Johnson   |
|         153 | Christopher Olsen |
|         162 | Clara Vishney     |
|         142 | Curtis Davies     |
|         109 | Daniel Faviet     |
|         163 | Danielle Greene   |
|         105 | David Austin      |
|         151 | David Bernstein   |
|         165 | David Lee         |
|         114 | Den Raphaely      |
|         107 | Diana Lorentz     |
|         198 | Donald OConnell   |
|         199 | Douglas Grant     |
|         149 | Eleni Zlotkey     |
|         172 | Elizabeth Bates   |
|         174 | Ellen Abel        |
|         148 | Gerald Cambrault  |
|         183 | Girard Geoni      |
|         118 | Guy Himuro        |
|         169 | Harrison Bloom    |
|         136 | Hazel Philtanker  |
|         204 | Hermann Baer      |
|         126 | Irene Mikkilineni |
|         111 | Ismael Sciarra    |
|         177 | Jack Livingston   |
|         127 | James Landry      |
|         131 | James Marlow      |
|         156 | Janette King      |
|         133 | Jason Mallin      |
|         181 | Jean Fleaur       |
|         189 | Jennifer Dilly    |
|         200 | Jennifer Whalen   |
|         110 | John Chen         |
|         139 | John Seo          |
|         145 | John Russell      |
|         176 | Jonathon Taylor   |
|         112 | Jose Manuel Urman |
|         140 | Joshua Patel      |
|         125 | Julia Nayer       |
|         186 | Julia Dellinger   |
|         119 | Karen Colmenares  |
|         146 | Karen Partners    |
|         188 | Kelly Chung       |
|         124 | Kevin Mourgos     |
|         197 | Kevin Feeney      |
|         135 | Ki Gee            |
|         178 | Kimberely Grant   |
|         129 | Laura Bissot      |
|         102 | Lex De Haan       |
|         159 | Lindsey Smith     |
|         168 | Lisa Ozer         |
|         160 | Louise Doran      |
|         113 | Luis Popp         |
|         182 | Martha Sullivan   |
|         164 | Mattea Marvins    |
|         120 | Matthew Weiss     |
|         134 | Michael Rogers    |
|         201 | Michael Hartstein |
|         130 | Mozhe Atkinson    |
|         108 | Nancy Greenberg   |
|         184 | Nandita Sarchand  |
|         154 | Nanette Cambrault |
|         101 | Neena Kochhar     |
|         155 | Oliver Tuvault    |
|         202 | Pat Fay           |
|         157 | Patrick Sully     |
|         122 | Payam Kaufling    |
|         144 | Peter Vargas      |
|         150 | Peter Tucker      |
|         152 | Peter Hall        |
|         143 | Randall Matos     |
|         191 | Randall Perkins   |
|         137 | Renske Ladwig     |
|         194 | Samuel McCain     |
|         192 | Sarah Bell        |
|         161 | Sarath Sewall     |
|         123 | Shanta Vollman    |
|         205 | Shelley Higgins   |
|         116 | Shelli Baida      |
|         117 | Sigal Tobias      |
|         138 | Stephen Stiles    |
|         100 | Steven King       |
|         128 | Steven Markle     |
|         166 | Sundar Ande       |
|         173 | Sundita Kumar     |
|         203 | Susan Mavris      |
|         170 | Tayler Fox        |
|         190 | Timothy Gates     |
|         132 | TJ Olson          |
|         141 | Trenna Rajs       |
|         106 | Valli Pataballa   |
|         195 | Vance Jones       |
|         171 | William Smith     |
|         206 | William Gietz     |
|         180 | Winston Taylor    |
+-------------+-------------------+
107 rows in set (0.00 sec)

10. Display first name and join date of the employees who is either IT Programmer or 
Sales Man

d2_56660>SELECT FIRST_NAME,HIRE_DATE FROM employees WHERE JOB_ID IN('IT_PROG','SA_REP');
+-------------+------------+
| FIRST_NAME  | HIRE_DATE  |
+-------------+------------+
| Alexander   | 1987-06-20 |
| Bruce       | 1987-06-21 |
| David       | 1987-06-22 |
| Valli       | 1987-06-23 |
| Diana       | 1987-06-24 |
| Peter       | 1987-08-06 |
| David       | 1987-08-07 |
| Peter       | 1987-08-08 |
| Christopher | 1987-08-09 |
| Nanette     | 1987-08-10 |
| Oliver      | 1987-08-11 |
| Janette     | 1987-08-12 |
| Patrick     | 1987-08-13 |
| Allan       | 1987-08-14 |
| Lindsey     | 1987-08-15 |
| Louise      | 1987-08-16 |
| Sarath      | 1987-08-17 |
| Clara       | 1987-08-18 |
| Danielle    | 1987-08-19 |
| Mattea      | 1987-08-20 |
| David       | 1987-08-21 |
| Sundar      | 1987-08-22 |
| Amit        | 1987-08-23 |
| Lisa        | 1987-08-24 |
| Harrison    | 1987-08-25 |
| Tayler      | 1987-08-26 |
| William     | 1987-08-27 |
| Elizabeth   | 1987-08-28 |
| Sundita     | 1987-08-29 |
| Ellen       | 1987-08-30 |
| Alyssa      | 1987-08-31 |
| Jonathon    | 1987-09-01 |
| Jack        | 1987-09-02 |
| Kimberely   | 1987-09-03 |
| Charles     | 1987-09-04 |
+-------------+------------+
35 rows in set (0.01 sec)

11. Display details of employee with ID 150 or 160.

d2_56660>SELECT * FROM employees WHERE EMPLOYEE_ID IN(150,160);
+-------------+------------+-----------+---------+--------------------+------------+--------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | EMAIL   | PHONE_NUMBER       | HIRE_DATE  | JOB_ID | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-----------+---------+--------------------+------------+--------+----------+----------------+------------+---------------+
|         150 | Peter      | Tucker    | PTUCKER | 011.44.1344.129268 | 1987-08-06 | SA_REP | 10000.00 |           0.30 |        145 |            80 |
|         160 | Louise     | Doran     | LDORAN  | 011.44.1345.629268 | 1987-08-16 | SA_REP |  7500.00 |           0.30 |        146 |            80 |
+-------------+------------+-----------+---------+--------------------+------------+--------+----------+----------------+------------+---------------+
2 rows in set (0.00 sec)

12. Display first name, salary, commission pct, and hire date for employees with salary 
less than 10000.

d2_56660>SELECT FIRST_NAME,SALARY,COMMISSION_PCT,HIRE_DATE FROM employees WHERE SALARY<10000;
+-------------+---------+----------------+------------+
| FIRST_NAME  | SALARY  | COMMISSION_PCT | HIRE_DATE  |
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
88 rows in set (0.03 sec)


13. Display details of jobs in the descending order of the title.

d2_56660>SELECT * FROM jobs ORDER BY JOB_TITLE DESC;
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
19 rows in set (0.00 s


14. Display details of the employees where commission percentage is null and salary in 
the range 5000 to 10000 and department is 30.


d2_56660>SELECT * FROM employees WHERE COMMISSION_PCT = 'NULL' AND SALARY BETWEEN '5000' AND '10000' AND DEPARTMENT_ID =30;
Empty set, 1 warning (0.08 sec)

15. Display employees first_name,email who are working in “Executive” department.

d2_56660>SELECT FIRST_NAME,EMAIL FROM employees WHERE DEPARTMENT_ID=90;
+------------+----------+
| FIRST_NAME | EMAIL    |
+------------+----------+
| Steven     | SKING    |
| Neena      | NKOCHHAR |
| Lex        | LDEHAAN  |
+------------+----------+
3 rows in set (0.00 s

16. Display unique contry_id from locations table.

d2_56660>SELECT DISTINCT COUNTRY_ID FROM locations;
+------------+
| COUNTRY_ID |
+------------+
| "          |
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
15 rows in set (0.09 sec)

17. Display all employees whose have job_id IT_PROG and FI_ACCOUNT.

d2_56660>SELECT * FROM employees WHERE JOB_ID='IT_PROG' OR JOB_ID='FI_ACCOUNT';
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
10 rows in set (0.04 sec)

18. Display all countries in ascending order

d2_56660>SELECT * FROM countries ORDER BY COUNTRY_NAME DESC;
+------------+--------------------------+-----------+
| COUNTRY_ID | COUNTRY_NAME             | REGION_ID |
+------------+--------------------------+-----------+
| ZW         | Zimbabwe                 |         4 |
| ZM         | Zambia                   |         4 |
| US         | United States of America |         2 |
| UK         | United Kingdom           |         1 |
| CH         | Switzerland              |         1 |
| SG         | Singapore                |         3 |
| NG         | Nigeria                  |         4 |
| NL         | Netherlands              |         1 |
| MX         | Mexico                   |         2 |
| KW         | Kuwait                   |         4 |
| JP         | Japan                    |         3 |
| IT         | Italy                    |         1 |
| IL         | Israel                   |         4 |
| IN         | India                    |         3 |
| HK         | HongKong                 |         3 |
| DE         | Germany                  |         1 |
| FR         | France                   |         1 |
| EG         | Egypt                    |         4 |
| DK         | Denmark                  |         1 |
| CN         | China                    |         3 |
| CA         | Canada                   |         2 |
| BR         | Brazil                   |         2 |
| BE         | Belgium                  |         1 |
| AU         | Australia                |         3 |
| AR         | Argentina                |         2 |
+------------+--------------------------+-----------+
25 rows in set (0.00 sec)

19. Display employees where first name or last name start with S

d2_56660>SELECT * FROM employees WHERE FIRST_NAME LIKE 'S%' OR LAST_NAME LIKE 'S%';
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

20. Display details of the employees where commission percentage is null and salary in 
the range 5000 to 10000 and department is 30.

d2_56660>SELECT * FROM employees WHERE COMMISSION_PCT = 'NULL' AND SALARY BETWEEN '5000' AND '10000' AND DEPARTMENT_ID =30;
Empty set, 1 warning (0.00 sec)

21. Display all employees who have job_id IT_PROG and FI_ACCOUNT

d2_56660>SELECT * FROM employees WHERE JOB_ID='IT_PROG' OR JOB_ID='FI_ACCOUNT';
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

22. Display all the Part names with weight between 12 and 14 (inclusive of both).

d2_56660>SELECT Pname FROM p WHERE Weight BETWEEN '12' AND '14';
+-------+
| Pname |
+-------+
| Nut   |
| Screw |
| Cam   |
+-------+
3 rows in set (0.00 sec)

23. Display all the Suppliers except the supplier from London.

d2_56660>SELECT * FROM s WHERE City!='London';
+------+-------+--------+--------+
| S#   | Sname | Status | City   |
+------+-------+--------+--------+
| S2   | Jones |     10 | Paris  |
| S3   | Blake |     30 | Paris  |
| S5   | Adams |     30 | Athens |
+------+-------+--------+--------+
3 rows in set (0.01 sec)

24. Display all the suppliers with a status between 10 and 20.

d2_56660>SELECT * FROM s WHERE Status BETWEEN '10' AND '20';
+------+-------+--------+--------+
| S#   | Sname | Status | City   |
+------+-------+--------+--------+
| S1   | Smith |     20 | London |
| S2   | Jones |     10 | Paris  |
| S4   | Clark |     20 | London |
+------+-------+--------+--------+
3 rows in set (0.00 sec)


25. Display PNAME and COLOR from the P table for the city London.

d2_56660>SELECT Pname,Color FROM p WHERE City='London';
+-------+-------+
| Pname | Color |
+-------+-------+
| Nut   | Red   |
| Screw | Red   |
| Cog   | Red   |
+-------+-------+
3 rows in set (0.00 sec)

26. Display all the suppliers from London.

d2_56660>SELECT * FROM s WHERE City = 'London';
+------+-------+--------+--------+
| S#   | Sname | Status | City   |
+------+-------+--------+--------+
| S1   | Smith |     20 | London |
| S4   | Clark |     20 | London |
+------+-------+--------+--------+
2 rows in set (0.00 sec)

27. Display all suppliers from Paris or London.

d2_56660>SELECT * FROM s WHERE City IN('London','Paris');
+------+-------+--------+--------+
| S#   | Sname | Status | City   |
+------+-------+--------+--------+
| S1   | Smith |     20 | London |
| S2   | Jones |     10 | Paris  |
| S3   | Blake |     30 | Paris  |
| S4   | Clark |     20 | London |
+------+-------+--------+--------+
4 rows in set (0.00 sec)

28. Display all project in Athens

d2_56660>SELECT * FROM j WHERE City = 'Athens';
+------+---------+--------+
| J#   | Jname   | City   |
+------+---------+--------+
| J3   | Reader  | Athens |
| J4   | Console | Athens |
+------+---------+--------+
2 rows in set (0.00 sec)