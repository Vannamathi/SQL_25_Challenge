📌 GROUP BY – Explanation

GROUP BY is used in SQL to group rows that have the same values in one or more columns and perform aggregate functions like COUNT(), SUM(), AVG(), MAX(), MIN() on each group.

Syntax:

SELECT column_name, AGG_FUNCTION(column_name)
FROM table_name
WHERE condition
GROUP BY column_name;

Example
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;


💡 This groups all employees by their department and counts how many employees are in each department.

Key Points to Remember

GROUP BY comes after WHERE and before ORDER BY.

Every column in SELECT (that is not inside an aggregate function) must be in the GROUP BY.

You can group by multiple columns.

💼 Interview Tips

Common Question: "What is the difference between GROUP BY and ORDER BY?"
➡ GROUP BY groups rows for aggregation, while ORDER BY sorts the result.

Common Trap: "Can we use GROUP BY without an aggregate function?"
➡ Yes, but it’s rare — mostly for removing duplicates.

Real-time Scenario: "Find total sales per customer per month" — interviewer tests grouping by multiple columns.
