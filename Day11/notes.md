# 🚀 Day 11 – INNER JOIN in SQL  

Welcome to **Day 11 of my SQL Learning Journey**! 🎯  
Today’s focus is on **INNER JOIN** – one of the most important concepts when working with relational databases.  

---

## 🔹 What is INNER JOIN?
- The **INNER JOIN** keyword selects records that have matching values in **both tables**.  
- If there is **no match**, the row is **not included** in the result.  
- It’s the most commonly used type of JOIN in SQL.  

---

## 🔹 Syntax
```sql
SELECT columns
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;

---

## 🔹💡 Interview Tips

Be clear: INNER JOIN shows only common values from both tables.
Difference between INNER JOIN and LEFT JOIN is a common question → practice explaining with examples.
Interviewers may ask: “What happens if there is no match?” → Answer: The row will not appear in the result set.
