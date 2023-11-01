use klk;
-- inner join 
SELECT employee.emp_id, employee.first_name,branch.branch_name
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id;

-- left join (all rows of left )
-- complete  table of joined left side, but in branch table which is on right means right table  that matches the condition will be accesed

SELECT employee.emp_id,employee.first_name, branch.branch_name
FROM employee
LEFT JOIN branch
ON employee.emp_id= branch.mgr_id;

--RIGHT JOIN all row of right and left side which saticfy  conditon (WHICH IS WRITTEN AFTER :-'ON')
SELECT employee.emp_id,employee.first_name, branch.branch_name
FROM employee
RIGHT JOIN branch
ON employee.emp_id= branch.mgr_id;
