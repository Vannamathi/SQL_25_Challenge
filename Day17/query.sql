create table departments(
		dept_id int primary key,
        dept_name varchar(50) not null,
        location varchar(50) not null
	);

create table employeess (
		emp_id int primary key,
        emp_name varchar(50) not null,
        salary decimal(10,2) not null,
        hire_date date not null,
        dept_id int,
        foreign key (dept_id) references departments(dept_id)
	);
    
INSERT INTO departments VALUES
(1, 'HR', 'Chennai'),
(2, 'IT', 'Bangalore'),
(3, 'Finance', 'Mumbai'),
(4, 'Marketing', 'Delhi');

INSERT INTO employeess VALUES
(101, 'Arun', 50000, '2021-05-15', 1),
(102, 'Banu', 65000, '2020-08-10', 2),
(103, 'Charan', 48000, '2022-03-12', 1),
(104, 'Deepa', 75000, '2019-11-25', 3),
(105, 'Elan', 62000, '2021-07-19', 2),
(106, 'Farah', 58000, '2020-01-30', 4),
(107, 'Gokul', 80000, '2018-09-05', 3);

-- DAY 17 : MULTI ROW SUB QUERY & MULTI COLUMN SUB QUERY

-- Multiple row subquery

SELECT * FROM employeess;
-- 1.Find employees who work in the same department as 'Banu'.
select emp_name from employeess
 where dept_id in (select dept_id from employeess where emp_name='Banu');
 
-- 2.Find employees whose salary matches with any employee in the 'Finance' department.
 select emp_name, salary from employeess
 where salary in (select salary from employeess where dept_id = ( select dept_id from departments where dept_name='Finance'));
 
 -- 3. Find employees who joined after the earliest joining date in the 'IT' department
 select emp_name, hire_date from employeess 
 where hire_date > (select min(hire_date) from employeess where dept_id = (select dept_id from departments where dept_name='IT'));
 
-- Multiple Column subquery
-- 1.Find employees whose (dept_id, salary) matches any (dept_id, salary) in the 'Finance' department.
 select emp_name from employeess
 where (dept_id, salary) in (select dept_id,salary from employeess where dept_id = (select dept_id from departments where dept_name='Finance'));
 
 -- 2.Find employees who have the same salary and joining date as 'Deepa'.
 select emp_name from employeess 
 where (salary, hire_date) in (select salary,hire_date from employeess where emp_name='Deepa');
