-- DAY 10 : Aliases (AS)

-- Example 1: Alias for columns
SELECT emp_name AS Employee, dept_name AS Department, salary AS Monthly_Salary
FROM employees;

-- Example 2: Alias without AS (works in MySQL too)
SELECT emp_name Employee, salary Monthly_Salary
FROM employees;
