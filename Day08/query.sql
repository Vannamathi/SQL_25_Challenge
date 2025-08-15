-- DAY 8 : GROUP BY

/* GROUP BY in MySQL is used to organize rows that have the same values into groups,
 so you can perform calculations like totals or averages on each group.*/
 
SELECT dept_name, 
		COUNT(*) AS total_employees, 
        AVG(salary) AS avg_salary
FROM employees
GROUP BY dept_name;
