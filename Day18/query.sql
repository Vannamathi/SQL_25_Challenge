CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept VARCHAR(50),
    salary INT,
    performance_rating INT
);

-- Insert Sample Values
INSERT INTO Employees (emp_id, emp_name, dept, salary, performance_rating) VALUES
(1, 'Arun', 'IT', 50000, 5),
(2, 'Bala', 'HR', 40000, 3),
(3, 'Chitra', 'Finance', 45000, 4),
(4, 'Dinesh', 'IT', 60000, 2),
(5, 'Esha', 'Finance', 55000, 1),
(6, 'Farhan', 'HR', 30000, 4),
(7, 'Geetha', 'IT', 70000, 5);

-- Assign Grades based on Performance
 SELECT emp_name, performance_rating,
    CASE 
        WHEN performance_rating = 5 THEN 'Outstanding'
        WHEN performance_rating = 4 THEN 'Excellent'
        WHEN performance_rating = 3 THEN 'Good'
        WHEN performance_rating = 2 THEN 'Needs Improvement'
        ELSE 'Poor'
    END AS Performance_Grade
FROM Employees;
