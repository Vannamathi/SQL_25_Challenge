-- DAY 4

/* DISTINCT: Shows only unique values, removing duplicates.

LIMIT: Controls how many rows are shown in the result.*/

-- Get the unique list of departments.
SELECT DISTINCT department  
FROM employees;

-- Get the first 5 employees from the table.
SELECT *  
FROM employees  
LIMIT 3; 
