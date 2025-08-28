# 🚀 Day 17 – Subqueries (Multiple Row & Multiple Column)

## 📌 Overview
Today’s SQL practice focused on **subqueries that return multiple rows and multiple columns**.  
Unlike single-row subqueries, these allow us to compare against **sets of values** or even **tuples (multiple columns)**.  

Subqueries make queries more **modular, readable, and powerful**.

---

## 📝 Key Learnings

### 🔹 Multiple Row Subquery
- Returns **more than one row**.
- Often used with operators like:
  - `IN` → matches any value in a list.
  - `ANY` / `SOME` → compares with *at least one* value.
  - `ALL` → compares with *all values*.

**Example:**
```sql
-- Employees whose salary matches anyone in Finance dept
SELECT emp_name, salary 
FROM employees 
WHERE salary IN (
    SELECT salary 
    FROM employees 
    WHERE dept_id = 20
);

**🎯 Interview Tips:**
Common Mistake → Using = instead of IN when multiple rows are returned.
Optimization → Check if EXISTS is better than IN in certain queries.
Practice → Always test inner queries separately before combining.

###**🔑 Key Takeaway**

Subqueries are powerful tools to break down complex problems into smaller, manageable steps.
Understanding when to use single-row, multiple-row, and multiple-column subqueries is a key SQL interview skill.
