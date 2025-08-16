-- DAY 9 : HAVING Clause  

SELECT department, AVG(salary) AS avg_salary
FROM employeess
GROUP BY department
HAVING AVG(salary) > 50000;


/* 📖 Notes on HAVING Clause

WHERE filters rows before grouping.
HAVING filters groups after aggregation.
Often used with aggregate functions like COUNT(), AVG(), SUM().

🎯 Interview Tips
Q1: Difference between WHERE and HAVING?
WHERE → row-level filter before grouping.
HAVING → group-level filter after aggregation.

Q2: Can we use HAVING without GROUP BY?
Yes ✅, but it’s rare. Example:
SELECT COUNT(*) FROM employees HAVING COUNT(*) > 5;

Q3: Which is faster, WHERE or HAVING?
WHERE is faster since it filters data before grouping. Use WHERE when possible. */
