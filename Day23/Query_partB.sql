-- DAY 23 - Part B : SQL INTERVIEW QUERIES
-- Retrieve employees who earn more than the average salary
SELECT emp_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- Get the top 3 highest-paid employees
SELECT emp_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 3;

-- List the nth highest salary (n=3 for example)
SELECT DISTINCT salary
FROM employees e1
WHERE 4- 1 = (                                 -- (n-1)
		SELECT COUNT(DISTINCT salary)
        FROM employees e2
        WHERE e2.salary > e1.salary
        );
