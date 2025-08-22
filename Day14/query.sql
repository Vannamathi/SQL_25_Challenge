-- DAY 14 : FULL JOIN
/* This query fetches all records from both tables
Unmatched rows will show NULL values. */

CREATE TABLE STUDENTS(
		STUDENT_ID INT PRIMARY KEY,
        STUDENT_NAME VARCHAR(50),
        COURSE_ID INT 
	);
    
CREATE TABLE COURSES (
	COURSE_ID INT PRIMARY KEY,
    COURESE_NAME VARCHAR(50)
);

INSERT INTO STUDENTS VALUES 
(1,'Alice',101),
(2,'Bob',102),
(3,'Charlie',103),
(4,'David', 104);

INSERT INTO COURSES VALUES
(101,'Maths'),
(102,'Sciene'),
(104,'English'),
(106, 'History');

select * from courses;
select * from students;

-- FULL JOIN Simulation
# 👉 No, MySQL doesn’t support FULL JOIN directly.
# 👉 We simulate it with UNION (LEFT + RIGHT JOIN).
  
SELECT s.student_id, s.student_name, c.courese_name
FROM students s
LEFT JOIN courses c ON s.course_id = c.course_id

UNION

SELECT s.student_id, s.student_name, c.courese_name
FROM students s
RIGHT JOIN courses c ON s.course_id = c.course_id;
