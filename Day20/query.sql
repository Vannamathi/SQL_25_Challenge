create table emp (
	emp_id int primary key,
    emp_name varchar(50),
    emp_email varchar(50),
    emp_doj date,
    emp_salary decimal(10,2)
);

insert into emp values
(1, 'John Doe', 'john@example.com', '2023-01-15', 50000),
(2, 'Mary Smith', 'mary@example.com', '2022-05-10', 60000),
(3, 'David Lee', 'david@example.com', '2021-11-20', 55000),
(4, 'Sophia Adams', 'sophia@example.com', '2020-07-05', 65000);

-- Now
select now() as current_Datetime;

-- current date
select CURDATE() as 'current_date';

-- CURRENT TIME
SELECT CURTIME() AS 'CURRENT_TIME';

-- YEAR, MONTH, DAY
SELECT EMP_NAME , EMP_DOJ,
YEAR(EMP_DOJ) AS JOINING_YEAR,
MONTH(EMP_DOJ) AS JOINING_MONTH,
DAY(EMP_DOJ) AS JOINING_DAY
FROM EMP;


-- DATE_ADD 
SELECT EMP_NAME,EMP_DOJ,DATE_ADD(EMP_DOJ, INTERVAL 1 YEAR) AS NEXT_YEAR_ANNIVERSARY FROM EMP;

-- DATE DIFF
SELECT EMP_NAME, EMP_DOJ, datediff(CURDATE(),EMP_DOJ) AS DAY_WORKED FROM EMP;
 
