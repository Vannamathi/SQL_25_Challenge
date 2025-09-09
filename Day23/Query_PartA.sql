	-- DAY 23 Interview style SQL Query Part_A
	-- Find the department that has the second highest average salary.”
	/*
	👉 This question tests your knowledge of:
	GROUP BY
	Aggregate functions (AVG)
	ORDER BY
	LIMIT / OFFSET (or subquery) */

-- Create Departments Table
	CREATE TABLE departments (
		dept_id INT PRIMARY KEY,
		dept_name VARCHAR(50)
	);

	-- Create Employees Table
	CREATE TABLE employees (
		emp_id INT PRIMARY KEY,
		emp_name VARCHAR(50),
		dept_id INT,
		salary DECIMAL(10,2),
		FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
	);

	-- Insert Departments
	INSERT INTO departments VALUES
	(101, 'HR'),
	(102, 'Finance'),
	(103, 'IT'),
	(104, 'Marketing');

	-- Insert Employees
	INSERT INTO employees VALUES
	(1, 'Alice', 101, 50000),
	(2, 'Bob', 101, 60000),
	(3, 'Charlie', 102, 70000),
	(4, 'David', 102, 75000),
	(5, 'Emma', 103, 90000),
	(6, 'Frank', 103, 85000),
	(7, 'Grace', 104, 65000),
	(8, 'Helen', 104, 62000);

	SELECT dept_id, AVG(salary) AS avg_salary
	FROM employees
	GROUP BY dept_id
	ORDER BY avg_salary DESC
	LIMIT 1 OFFSET 1; -- The OFFSET keyword is used along with LIMIT to skip a certain number of rows from the result set.
