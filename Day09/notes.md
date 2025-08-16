# 🚀 Day 9 - SQL HAVING Clause

### 🔹 Concept
- HAVING is used to filter groups after applying aggregate functions.
- It works with `GROUP BY`, unlike `WHERE`.

---

### 📝 Examples

```sql
-- Departments with more than 2 employees
SELECT dept_name, COUNT(*) AS total_employees
FROM employees
GROUP BY dept_name
HAVING COUNT(*) > 2;

-- Departments where average salary > 60000
SELECT dept_name, AVG(salary) AS avg_salary
FROM employees
GROUP BY dept_name
HAVING AVG(salary) > 60000;
