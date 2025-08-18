# Day 10 – Aliases (AS)

## 📘 Explanation
- **Aliases** are temporary names given to columns or tables.
- Syntax:  
  - Column Alias → `SELECT column_name AS alias_name`  
  - Table Alias → `FROM table_name AS alias_name`
- They improve **readability** and are very useful in **joins** or when dealing with long column names.

## 🖥️ Examples
```sql
-- Column Alias
SELECT emp_name AS Employee, salary AS Monthly_Salary
FROM employees;

-- Table Alias
SELECT e.emp_name, d.dept_name
FROM employees AS e
JOIN departments AS d ON e.dept_id = d.dept_id;

# 💡 Notes
AS is optional in MySQL → you can just write emp_name Employee.
Aliases only last for the query; they do not rename the actual column/table.
Very useful for clean reports and when writing joins.

## 🎯 Interview Tips
Expect questions like:
Difference between AS and permanent renaming (ALTER TABLE).
Can you use alias without AS? (Yes).
Why are aliases important in joins? (They reduce query complexity).
