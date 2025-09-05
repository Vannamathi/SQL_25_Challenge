-- Create Employeess table
CREATE TABLE Employeess (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary INT
);

-- Insert sample data
INSERT INTO Employeess VALUES
(1, 'Alice', 101, 50000),
(2, 'Bob', 101, 60000),
(3, 'Charlie', 102, 55000),
(4, 'David', 102, 70000),
(5, 'Emma', 103, 65000);
 
 -- ROW_NUMBER() : Assigns unique rank to each row
 select emp_name, dept_id, salary,
		ROW_NUMBER() OVER(PARTITION BY dept_id order by salary desc ) as row_num
from employeess;

-- RANK(): Allows ties(same salary -> same rank)
select emp_name, dept_id, salary,
		RANK() OVER(PARTITION BY dept_id ORDER BY salary desc) as rank_num
from employeess;

-- DENSE_RANK() : Similar to rank but no gaps in ranking
select emp_name, dept_id, salary,
		DENSE_RANK() OVER(PARTITION BY dept_id ORDER BY salary desc) as dense_rank_num
from employeess;

-- AGGREGATE WITH WINDOWS
select emp_name, dept_id, salary,
		AVG(salary) OVER(PARTITION BY dept_id) as avg_dept_salary
from employeess;
