-- DAY 12 : LEFT JOIN
-- LEFT JOIN: Show all employees with their department
SELECT e.emp_id, e.emp_name, d.dept_name
FROM Employees e
LEFT JOIN Departments d
ON e.dept_id = d.dept_id;

select * from employees;
select * from departments;
