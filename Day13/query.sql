-- DAY 13 : RIGHT JOIN

-- Basic RIGHT JOIN between employees and departments

select e.emp_id, e.emp_name, d.dept_name
from employees e
right join departments d
on e.dept_id = d.dept_id;
