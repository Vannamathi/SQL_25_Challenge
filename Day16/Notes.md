# 📌 Day 16 – Subqueries (Basic)

Today’s focus was on **Subqueries** – one of the most powerful concepts in SQL.  
A **subquery** is simply a query nested inside another query, allowing us to solve problems step by step.  

---

## 🔹 What I Practiced

### 1. Find the employee(s) with the highest salary
```sql
SELECT emp_name, salary 
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);
```

### 2. Find the department name where the employee with the lowest salary works
```sql
SELECT dept_name 
FROM departments
WHERE dept_id = (
    SELECT dept_id 
    FROM employees 
    WHERE salary = (SELECT MIN(salary) FROM employees)
);
```

### 3. Find employees whose salary is greater than the average salary
```sql
SELECT emp_name, salary 
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);
```

---

## 🔹 Insights Gained
- Subqueries make SQL **dynamic** – no need to hardcode values.  
- They are extremely useful in `WHERE`, `FROM`, and `SELECT` clauses.  
- With subqueries, you can solve **business-related questions** such as:  
  - Who earns more than the company average?  
  - Which department has the lowest-paid employee?  
  - Who is the top performer in the company?  

---

## 🔹 Interview Tips

💡 **Common Questions on Subqueries:**
1. What is a subquery and where can it be used?  
2. Difference between **correlated subquery** and **non-correlated subquery**.  
3. Can subqueries return multiple rows? What happens if they do?  
4. Where are subqueries less efficient compared to `JOIN`s?  
5. Write a query to find the **second highest salary** using a subquery.  

👉 Always remember:  
- If the subquery returns a single value → use `=`.  
- If the subquery returns multiple values → use `IN`, `ANY`, or `ALL`.  
- If performance is a concern, sometimes `JOINs` are better than subqueries.  

---

## 🔹 Example for Interview Prep

**Find the second highest salary using a subquery**
```sql
SELECT MAX(salary) 
FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees);
```

---

✅ **Day 16** gave me clarity on how subqueries simplify real-world queries and prepare me for both projects and interviews. 🚀
