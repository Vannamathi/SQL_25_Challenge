# Day 12 – LEFT JOIN in SQL

## 📌 What is LEFT JOIN?
`LEFT JOIN` is used to retrieve **all records from the left table** and the **matched records from the right table**. If no match exists, NULL is returned for the right table.

---

## 🔹 Example Tables

### Employees Table
| emp_id | emp_name | dept_id |
|--------|----------|---------|
| 1      | John     | 101     |
| 2      | Alice    | 102     |
| 3      | Bob      | 103     |
| 4      | Charlie  | NULL    |

### Departments Table
| dept_id | dept_name   |
|---------|-------------|
| 101     | HR          |
| 102     | IT          |
| 104     | Marketing   |

---

## 🔹 LEFT JOIN Query
```sql
SELECT e.emp_id, e.emp_name, d.dept_name
FROM Employees e
LEFT JOIN Departments d
ON e.dept_id = d.dept_id;
```

---

## ✅ Output
| emp_id | emp_name | dept_name |
|--------|----------|-----------|
| 1      | John     | HR        |
| 2      | Alice    | IT        |
| 3      | Bob      | NULL      |
| 4      | Charlie  | NULL      |

---

## 💡 Notes & Interview Tips
- LEFT JOIN ensures all rows from the left table are preserved.
- Unmatched rows in the right table become **NULL**.
- **Difference between INNER JOIN vs LEFT JOIN:**
  - INNER JOIN → only matched rows.
  - LEFT JOIN → all rows from left + matched from right.
- **Interview Question:** *How do you find records in one table that do not have a match in another?*  
👉 Use `LEFT JOIN` + `WHERE right_table.column IS NULL`.

```sql
SELECT e.emp_id, e.emp_name
FROM Employees e
LEFT JOIN Departments d
ON e.dept_id = d.dept_id
WHERE d.dept_id IS NULL;
```

---

## 🚀 Key Takeaway
`LEFT JOIN` is powerful for finding unmatched records and ensuring no data is lost from the left table!
