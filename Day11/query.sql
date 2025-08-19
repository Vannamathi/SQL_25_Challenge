-- DAY 11 : INNER JOIN

-- Fetch employees with their department names
SELECT e.emp_id, e.emp_name, d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

SELECT * FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS;
