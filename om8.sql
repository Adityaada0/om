use klk;
-- inner join 
SELECT employee.emp_id, employee.first_name,branch.branch_name
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id;

-- left join (all rows of left )
-- all of  table of joined left side but in branch table means right table that matches right table that matches the condition

SELECT employee.emp_id,employee.first_name, branch.branch_name
FROM employee
LEFT JOIN branch
ON employee.emp_id= branch.mgr_id;

--RIGHT JOIN all row of right
SELECT employee.emp_id,employee.first_name, branch.branch_name
FROM employee
RIGHT JOIN branch
ON employee.emp_id= branch.mgr_id;
