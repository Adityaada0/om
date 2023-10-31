DROP DATABASE if exists bingo; 
CREATE DATABASE bingo;
USE bingo;
CREATE TABLE employee(
    em_id INT PRIMARY KEY,
    em_name VARCHAR(20),
    salary INT,
    sex VARCHAR(1),
    mgr_id INT 
);
INSERT INTO  employee (em_id, em_name, salary, sex, mgr_id) VALUES
(101,'Aditya',100000, 'M',301),
(102,'Alok',20000,'M' ,302),
(103,'Radha',300000,'F'  ,301),
(104,'Anil',45000,'M',302),
(105,'Bhushan',65000,'M' ,301),
(106,'Aryan',400000,'M', NULL),
(107,'Prajwal',600000,'M',NULL);

CREATE TABLE manager(
    mgr_id INT PRIMARY KEY,
    mgr_name VARCHAR(20)
);
INSERT INTO  manager VALUES(301,'Aryan');
INSERT INTO  manager VALUES(302,'Prajwal');


-- 1)UNION
select em_name 
from employee 
UNION 
SELECT mgr_name from manager;

-- 2)INTERSECT
SELECT em_name AS 'managers'  FROM employee
INTERSECT
SELECT mgr_name FROM manager;

-- 3)difference
 SELECT em_name AS 'Junior Employees' 
FROM employee
EXCEPT
SELECT mgr_name 
FROM manager;