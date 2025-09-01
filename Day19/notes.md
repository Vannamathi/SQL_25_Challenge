### 🚀 Day 19 – IFNULL / COALESCE
## 📌 Overview

Today’s SQL practice focused on handling NULL values using IFNULL and COALESCE.
NULLs often cause issues in calculations and reporting, so replacing them with default values ensures accuracy and consistency.

## 🎯 Key Takeaways

Use IFNULL when handling only two values.
Use COALESCE when dealing with multiple possible NULL values.
These functions help ensure data completeness in reports.

## 💼 Interview Tips

Be ready to explain the difference between IFNULL and COALESCE.
Know that COALESCE is ANSI standard (works in most RDBMS), while IFNULL is MySQL-specific.
Expect scenarios like: "How do you replace NULL values with defaults?"

## 🎯 Interview Tips

Q: What is the difference between IFNULL and COALESCE?
✅ IFNULL is MySQL-specific and takes exactly 2 arguments, while COALESCE is ANSI SQL standard and accepts multiple arguments.

Q: When would you prefer COALESCE over IFNULL?
✅ When working on multi-database systems or when you need to check more than 2 values.

Q: Can you use COALESCE with more than 2 arguments?
✅ Yes, it returns the first non-NULL from the list.
