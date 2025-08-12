-- DAY 5
-- BETWEEN: Get employees with salary between 40000 and 60000  
SELECT *  
FROM employees  
WHERE salary BETWEEN 40000 AND 50000;

-- IN: Get employees from specific departments  
SELECT *  
FROM employees  
WHERE dept_name IN ('HR', 'IT');

-- LIKE: Get employees whose names start with 'A'  
SELECT *  
FROM employees  
WHERE emp_name LIKE 'v%';
