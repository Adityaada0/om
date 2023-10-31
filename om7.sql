DROP DATABASE if exists clg;
CREATE DATABASE clg;
USE clg;

CREATE TABLE employee(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(25),
    branch_id VARCHAR(25),
    salary INT,
    sex VARCHAR(1)
);

CREATE TABLE branch(
    br_id INT PRIMARY KEY,
    branch_name VARCHAR(25),
    mgr_id INT 

);
--1st data
INSERT INTO employee VALUES (101,"Aditya Awathare", NULL , 900000,'M');
INSERT INTO branch VALUES (1,'Managemnet',101);

UPDATE employee 
SET branch_id =1
WHERE emp_id =101;
-- 2nd time
INSERT INTO employee VALUES(102,"Vansh Singh", NULL , 800000,'M');
INSERT INTO branch VALUES (2,'Legal Affairs',102);

UPDATE employee 
SET branch_id =2
WHERE emp_id =102;

INSERT INTO employee VALUES(103,"Ram Mohan", NULL , 700000,'M');
INSERT INTO branch VALUES (3,'IT',103);

UPDATE employee 
SET branch_id =3
WHERE emp_id =103;

INSERT INTO employee VALUES(104,"Yogesh Sahare", NULL , 500000,'M');

UPDATE employee 
SET branch_id =3
WHERE emp_id =104;

-- inner join qry868
SELECT *
FROM employee 
JOIN branch 
ON employee.branch_id = branch.br_id;

-- left join (employees  .)
SELECT employee.emp_id , employee.emp_name, branch.branch_name 
FROM employee 
LEFT JOIN branch 
ON employee.emp_id = branch.mgr_id;

-- RIHHT JOIN

SELECT employee.emp_id , employee.emp_name, branch.branch_name AS "MANAGERS OF ALL DEPARTMENT"
FROM employee 
RIGHT JOIN branch 
ON employee.emp_id = branch.mgr_id;

