-- DAY 6: Aggregate Functions – SUM, AVG

-- Calculate the total salary of all employees
SELECT SUM(salary) AS total_salary
FROM employees;

-- Calculate the average salary of all employees
SELECT AVG(salary) AS average_salary
FROM employees;

--  Bonus: Total and average salary
SELECT
       SUM(salary) AS total_salary,
       AVG(salary) AS average_salary
FROM employees;ozhug
