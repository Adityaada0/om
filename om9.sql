USE clg;

SELECT * 
FROM employee 
ORDER BY emp_name;


SELECT salary,emp_name
FROM employee 
GROUP BY emp_id 
having salary <=700000;