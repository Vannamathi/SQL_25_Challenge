-- DAY 3
# ORDER BY 
/*
Day 3 - ORDER BY Clause
ORDER BY is used to sort the result set.
ASC  = Ascending order (default)
DESC = Descending order
*/
-- Descending order by Salary        
SELECT * 
FROM EMPLOYEES
ORDER BY SALARY DESC;  

-- Ascending order by Salary
SELECT * 
FROM EMPLOYEES
ORDER BY SALARY ASC;
