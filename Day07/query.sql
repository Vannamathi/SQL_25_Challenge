-- DAY 7 : Aggregate Functions: COUNT, MIN, MAX

/* 1. COUNT()
Returns the number of rows matching the condition.
COUNT(*) counts all rows, including NULLs.
COUNT(column) counts only non-NULL values. */
-- Count all employees
SELECT COUNT(*) AS total_employees
FROM employees;

-- Count employees with salary info
SELECT COUNT(salary) AS salary_count
FROM employees;

/* 2. MIN()
Returns the smallest value in a column.
Ignores NULL values. */

SELECT MIN(salary) AS min_salary
FROM employees;

/* 3,MAX()
Returns the largest value in a column.
Ignores NULL values. */

SELECT MAX(salary) AS max_salary
FROM employees;
