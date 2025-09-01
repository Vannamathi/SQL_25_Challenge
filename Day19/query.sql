 -- DAY 19 : IFNULL AND COALESCE
 CREATE TABLE EMPLOYEES (
			emp_id int primary key,
            emp_name varchar(20),
            bonus int
	);
 
 insert into employees (emp_id, emp_name, bonus) values
 (1,'Rossy',5000),
 (2,'Baskaran', NULL),
 (3,'Vannu', 7000),
 (4,'Barath', null);
 select * from employees;
 
 -- IFNULL 
 select emp_name, ifnull(bonus,0) as bonus_amount
 from employees;
 -- we can see the changes in select statement 
-- we need to update this into employees table using UPDATE COMMAND

-- COALESCE
select emp_name, coalesce(bonus,0)as bonus_amount
from employees;
