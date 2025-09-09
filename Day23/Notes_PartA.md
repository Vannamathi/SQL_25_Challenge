# 🚀 Day 23 – Interview-style Query  

## 📌 Problem Statement  
**Find the department with the second highest average salary.**  

This type of query is common in SQL interviews and tests your ability to combine multiple concepts.  

---

## ✅ Explanation

- GROUP BY dept_id → Groups employees by department.
- AVG(salary) → Calculates average salary for each department.
- ORDER BY avg_salary DESC → Sorts departments from highest to lowest average salary.
- LIMIT 1 OFFSET 1 →
- LIMIT 1 → Return 1 row only.
- OFFSET 1 → Skip the first row (highest avg salary).
- Final result = Second highest average salary department.

## 💡 Key Takeaways

-OFFSET helps in fetching the Nth highest values.
Alternative approaches:
-Subquery method: Exclude the max and find the next max.
-Window functions: Use ROW_NUMBER, RANK, or DENSE_RANK.

## 🎯 Interview Tips

Q1: How to find the Nth highest salary without LIMIT?
Use subqueries with MAX.

Q2: Which is better: LIMIT/OFFSET vs ROW_NUMBER()?
For large datasets, window functions are often more efficient.

Q3: What if multiple departments have the same average salary?
Use RANK() instead of LIMIT/OFFSET.
