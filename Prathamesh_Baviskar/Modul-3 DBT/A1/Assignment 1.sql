Database Technologies – Assignment 1

Q1. Create user with your roll number and group name. If your roll number is 12345 and group is d1, then username should be d1_12345. Give ALL privileges to this user for all databases created. You are expected to use this user for completing all further assignments.
Ans: -
mysql> CREATE USER D4_56327@localhost IDENTIFIED BY '56327';


Q2. Create an environment variable by name MYSQL_PS1 and set it to \u> . Now start MySQL client CLI and you should see your username in prompt instead of mysql> .
Ans: -
		completed

Q3. Create 'spj' database & grant all permissions to your username (created in Q.1).
Ans: -
root> CREATE DATABASE spj;
root> SHOW DATABASES;
root> GRANT ALL PRIVILEGES ON classwork.* TO sunbeam@localhost;
root> FLUSH PRIVILEGES;

Q4. Create following tables in ‘spj’ database. (This assignment is to practice INSERT queries).
CREAT TABLE S (S# CHAR(5), Sname CHAR(20), Status INT, City CHAR(15));
 S# Sname Status City 
 ----------------------------------------------
 S1 Smith 20 London 
 S2 Jones 10 Paris 
 S3 Blake 30 Paris 
 S4 Clark 20 London 
 S5 Adams 30 Athens 
 ---------------------------------------------- 
 
 
 CREATE TABLE P (P# CHAR(6), Pname CHAR(20), Color CHAR(6), Weight INT , CITY CHAR(15));
 P# Pname Color Weight City 
 ------------------------------------------------------------ 
 P1 Nut Red 12 London 
 P2 Bolt Green 17 Paris 
 P3 Screw Blue 17 Rome 
 P4 Screw Red 14 London 
 P5 Cam Blue 12 Paris 
 P6 Cog Red 19 London 
 ------------------------------------------------------------ 
 
 
 CREATE TABLE J (J# CHAR(4), Jname CHAR(10), Jname CHAR(10), City CHAR(15));
 J# Jname City
 ------------------------------------ 
 J1 Sorter Paris 
 J2 Punch Rome 
 J3 Reader Athens 
 J4 Console Athens 
 J5 Collator London 
 J6 Terminal Oslo 
 J7 Tape London 
 ------------------------------------
 
 CREATE TABLE sp (S# CHAR(4), P# CHAR(4), J# CHAR(4), QTY INT);
 S# P# J# QTY 
 ------------------------------------- 
 S1 P1 J1 200 
 S1 P1 J4 700 
 S2 P3 J1 400 
 S2 P3 J2 200 
 S2 P3 J3 200 
 S2 P3 J4 500 
 S2 P3 J5 600 
 S2 P3 J6 400 
 S2 P3 J7 800 
 S2 P5 J2 100 
 S3 P3 J1 200 
 S3 P4 J2 500 
 S4 P6 J3 300 
 S4 P6 J7 300 
 S5 P2 J2 200 
 S5 P2 J4 100 
 S5 P5 J5 500 
 S5 P5 J7 100 
 S5 P6 J2 200 
 S5 P1 J4 100 
 S5 P3 J4 200 
 S5 P4 J4 800 
 S5 P5 J4 400 
 S5 P6 J4 500 
 ---------------------------------
 
CREATE TABLE tablename (col1 DATATYPE, col2 DATATYPE, col3 DATATYPE, ...);
INSERT INTO tablename VALUES (v1, v2, v3, ...);
INSERT INTO tablename VALUES (v1, v2, v3, ...), (v1, v2, v3, ...), (v1, v2, v3, ...), ..;
 