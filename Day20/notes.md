# 📅 Day 20 – Date Functions in SQL

## 📌 Overview
Date functions in SQL allow us to **manipulate, extract, and calculate values from date and time fields**.  
They are essential in real-world databases for reporting, tracking, and scheduling.  

---

## 📝 Notes
- `CURDATE()` → Returns the current system date.  
- `NOW()` → Returns the current date and time.  
- `YEAR()`, `MONTH()`, `DAY()` → Extract specific parts of a date.  
- `DATEDIFF(date1, date2)` → Calculates the difference (in days) between two dates.  
- `DATE_ADD(date, INTERVAL X unit)` → Adds time intervals (days, months, years).  
- `DATE_SUB(date, INTERVAL X unit)` → Subtracts time intervals.  
- Always use proper **DATE / DATETIME data types** for accuracy.  

---

## 🔑 Key Takeaways
- Helps in **employee tenure calculations**, **event scheduling**, and **financial reports**.  
- Can **format and extract** parts of a date for analytics.  
- Use wisely in **WHERE clauses** for filtering data over time.  

---

## 💡 Interview Tips
1. Be ready to explain the difference between **CURDATE() and NOW()**.  
2. Know how to calculate **employee age or tenure** using `DATEDIFF()`.  
3. Common question: *"How do you get employees who joined in the last 30 days?"*  
   ```sql
   SELECT * FROM Employees
   WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 30 DAY);
