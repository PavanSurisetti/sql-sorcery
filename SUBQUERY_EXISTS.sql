-- creating two tables 
use db;
-- creating a table for student
create table student(Roll_No int primary key,name varchar(30),age int);
describe student;
insert into student values(1,'Ram',20),(2,'Sam',21),(3,'John',22),(4,'Ravi',23);
select *from student;
-- creating another table for course
create table studentCourse(Roll_No int ,course_id varchar(30) primary key);
describe studentCourse;
insert into studentCourse values(1,'C101'),(2,'C102'),(4,'C103'),(5,'C104');
-- Find students who have a course
select * from student s where exists(select * from studentCourse c where s.Roll_NO=c.Roll_NO);
-- EXPLANATION for EXIST how it actually works
-- Step 1: Take first row
-- Row:
-- Roll_No = 1 (Ram)
-- Run subquery:
-- SELECT * 
-- FROM studentCourse 
-- WHERE c.Roll_No = 1;

--  Found:

-- (1, C101)

-- EXISTS = TRUE → include Ram

-- Step 2: Next row
-- Row:
-- Roll_No = 2 (Sam)
-- Subquery:
-- WHERE c.Roll_No = 2

-- Found:

-- (2, C102)

-- EXISTS = TRUE → include Sam

-- Step 3: Next row
-- Row:
-- Roll_No = 3 (John)
-- Subquery:
-- WHERE c.Roll_No = 3

-- Found:

-- (no rows)

-- EXISTS = FALSE → exclude John

-- Step 4: Next row
-- Row:
-- Roll_No = 4 (Ravi)
-- Subquery:
-- WHERE c.Roll_No = 4

--  Found:

-- (4, C103)

--  EXISTS = TRUE → include Ravi