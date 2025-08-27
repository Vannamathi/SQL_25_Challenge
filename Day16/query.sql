 -- DAY 16 SUB QUERY BASICS
 -- single row sub query
-- 1.Find the employee(s) who has the highest salary.
select emp_name, salary from employeess 
where salary = (select max(salary) from employeess);

-- 2. Find the department name where the employee with the lowest salary works.
select dept_name from departments 
where dept_id = ( select dept_id from employeess where salary =(select min(salary) from employeess));

-- 3.Find employees whose salary is greater than the average salary.
select emp_name, salary from employeess
where salary >( select avg(salary) from employeess);
