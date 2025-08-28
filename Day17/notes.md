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

## 📌 Key Takeaways
- **Single-column subqueries** return values for one column and are often used with `IN`, `=`, `>`, `<` operators.
- **Multi-column subqueries** return tuples (sets of values) and are used with row-wise comparison `(col1, col2)`.
- Subqueries can be nested and used in `WHERE`, `FROM`, and `SELECT` clauses.


---


## 🎯 Interview Tips
- Be clear on the difference between **single-row, multiple-row, and multiple-column subqueries**.
- Employers often ask: *“How would you find employees earning the same as another employee?”* → This is a **correlated or multi-column subquery**.
- Always consider **performance**: subqueries can be replaced with **JOINS** in many cases.


---


## 💡 Insights for Quick Learning
- Practice writing **real-world queries** like salary comparison, department-based filtering, and matching employee attributes.
- Understand how **subqueries differ from JOINs** → JOINs combine data, while subqueries filter based on another query.
- Try converting a subquery into a JOIN query to strengthen your SQL logic.


---


✨ Day 17 complete! Excited to keep building my SQL muscle, one query at a time 💪
