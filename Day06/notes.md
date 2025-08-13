📚 Day 6 – Aggregate Functions: SUM, AVG

1. SUM()
Adds up all the values in a numeric column.

Ignores NULL values.

SELECT SUM(salary) AS total_salary
FROM employees;

2. AVG()
Calculates the average of numeric values.

Ignores NULL values.

SELECT AVG(salary) AS avg_salary
FROM employees;

💡 Interview Tips
Both functions ignore NULL values automatically.

Works only with numeric data types.

Often used with GROUP BY to summarize per category.

Use HAVING for filtering aggregated results (not WHERE).

Indexing improves performance when filtering large datasets.

📝 Practice Queries

-- 1. Total salary of all employees
SELECT SUM(salary) AS total_salary
FROM employees;

-- 2. Average salary of all employees
SELECT AVG(salary) AS avg_salary
FROM employees;

-- 3. Total salary by department
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

-- 4. Average salary where average > 50000
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;
