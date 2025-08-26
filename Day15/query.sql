-- DAY 15 : SELF JOIN 

---------------------------------------------------------
-- Example of SELF JOIN
-- A self join is when a table is joined with itself.
-- Here, we check if two students are in the same course.
---------------------------------------------------------

SELECT S1.STUDENT_NAME AS Student1,
       S2.STUDENT_NAME AS Student2,
       S1.COURSE_ID
FROM STUDENTS S1
JOIN STUDENTS S2
  ON S1.COURSE_ID = S2.COURSE_ID 
 AND S1.STUDENT_ID <> S2.STUDENT_ID;
