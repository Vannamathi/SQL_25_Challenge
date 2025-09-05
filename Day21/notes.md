### 🚀 Day 21 – Window Functions
## 📌 Overview
Window functions in SQL are extremely powerful because they let you perform aggregations and rankings across a set of rows while still keeping each individual row in the output.
Unlike GROUP BY, which collapses rows into a single summary, window functions let you see both row-level and aggregated data together.

### 🔑 Types of Window Functions

1.ROW_NUMBER() – Assigns a unique number to each row.
2.RANK() – Similar to ROW_NUMBER, but gives the same rank for ties and leaves gaps.
3.DENSE_RANK() – Like RANK, but without gaps.
4.Aggregate Windows (SUM, AVG, MIN, MAX, etc.) – Allow aggregate calculations per partition without grouping rows.

### 💡 Key Takeaways

Window functions ≠ Aggregate functions: They keep all rows while adding extra calculated columns.
Perfect for ranking employees, calculating averages per department, running totals, and analytics reports.
Syntax always requires an OVER() clause.
You can use PARTITION BY (similar to GROUP BY) and ORDER BY inside OVER().

### 🎯 Interview Tips

Q1: What’s the difference between RANK(), DENSE_RANK(), and ROW_NUMBER()?
ROW_NUMBER → No ties
RANK → Ties with gaps
DENSE_RANK → Ties without gaps

Q2: When would you use Window Functions instead of GROUP BY?
Use Window Functions when you want to keep all row-level details but still calculate aggregates.

Q3: Can Window Functions be used with WHERE clauses?
No, they work only in SELECT / ORDER BY / HAVING parts, not WHERE.

📝 Example Insight

👉 If you need to find the top 2 highest-paid employees in each department, Window Functions (ROW_NUMBER / RANK) make it simple without using nested subqueries.
