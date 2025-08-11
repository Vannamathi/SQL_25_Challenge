-- Day 1 SQL Queries
CREATE DATABASE LINKEDIN; -- Database created

USE LINKEDIN -- Using the database

-- Create table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    join_date DATE
);

-- Insert sample data
INSERT INTO employees (emp_id, emp_name, department, salary, join_date) VALUES
(101, 'Alice', 'HR', 50000, '2020-01-15'),
(102, 'Bob', 'IT', 60000, '2019-03-22'),
(103, 'Charlie', 'Finance', 55000, '2021-07-01'),
(104, 'David', 'IT', 65000, '2018-11-12'),
(105, 'Eva', 'Marketing', 48000, '2022-05-20');

SELECT * FROM EMPLOYEES;

-- DAY 2
# Fetch details of all employees whose salary is greater than 50,000.

SELECT * FROM EMPLOYEES 
	WHERE SALARY > 50000;
