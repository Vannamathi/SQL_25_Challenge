# Day 15 – SELF JOIN

## 📘 Notes

* A **SELF JOIN** is a regular join but the table is joined with itself.
* Useful for comparing rows within the same table.
* Requires **aliases** to differentiate the same table (e.g., `A` and `B`).
* Commonly used for:

  * Hierarchical data (e.g., employees & managers).
  * Finding duplicates.
  * Comparing rows within a table.

🔑 **Trick to Remember**: Think of it as the table making a **clone of itself** and then comparing.

---

## 💻 Example Code

```sql
-- Example: Employee table with Manager relationship

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    ManagerID INT
);

INSERT INTO Employees (EmpID, EmpName, ManagerID) VALUES
(1, 'Alice', NULL),
(2, 'Bob', 1),
(3, 'Charlie', 1),
(4, 'David', 2),
(5, 'Eva', 2);

-- Self Join: Match each employee with their manager
SELECT E1.EmpName AS Employee, E2.EmpName AS Manager
FROM Employees E1
LEFT JOIN Employees E2 ON E1.ManagerID = E2.EmpID;
```

**Output:**

| Employee | Manager |
| -------- | ------- |
| Alice    | NULL    |
| Bob      | Alice   |
| Charlie  | Alice   |
| David    | Bob     |
| Eva      | Bob     |

---

## 🎯 Interview Questions

1. What is a SELF JOIN in SQL?
2. Why do we use aliases in SELF JOIN?
3. Give a real-world example where SELF JOIN is useful.
4. Difference between SELF JOIN and CROSS JOIN?
5. Can SELF JOIN be used with conditions like WHERE?

---

## 🧠 Easy Way to Remember

* Imagine a table standing in front of a **mirror** 🪞.
* It sees itself and compares its rows with its reflection.
* That’s a SELF JOIN!
