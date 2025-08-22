# Day 14 – FULL JOIN  

## 📌 Notes on FULL JOIN  
- **Definition**:  
  FULL JOIN returns **all records** when there is a match in either the left or right table.  
  - If rows don’t have a match, NULL values are shown.  

- **Key Point in MySQL**:  
  - MySQL does **not support FULL JOIN directly**.  
  - To achieve FULL JOIN in MySQL, we combine **LEFT JOIN + RIGHT JOIN** using `UNION`.  

- **Insights**:  
  1. FULL JOIN is useful for combining all data from two tables, even if some records don’t match.  
  2. Helps in **data completeness**, showing matched + unmatched rows.  
  3. MySQL Workbench requires a workaround using **UNION**.  

---

## 🎯 Interview Questions  
1. Does MySQL support FULL JOIN directly?  
2. How can you achieve FULL JOIN in MySQL Workbench?  
3. What is the difference between INNER JOIN and FULL JOIN?  
4. Why do we use UNION for FULL JOIN in MySQL?  
5. When should you prefer FULL JOIN over other joins?  

---

## 🧠 Easiest Way to Remember FULL JOIN  
👉 Think of **FULL JOIN = LEFT JOIN + RIGHT JOIN**.  
- **LEFT JOIN** → all rows from left + matches from right  
- **RIGHT JOIN** → all rows from right + matches from left  
- Combine them → You get **FULL JOIN**  

🔑 Shortcut to recall:  
**"FULL JOIN = ALL (Left + Right)"**  

---

✅ Day 14 of SQL Learning Journey Completed 🚀  
