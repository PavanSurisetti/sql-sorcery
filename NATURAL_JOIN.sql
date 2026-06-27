-- creating two tables for performing NATRUAL join
use db;
-- creating a table for student
create table student(Roll_No int primary key,name varchar(30),age int);
insert into student values(1,'Ram',20),(2,'Sam',21),(3,'John',22),(4,'Ravi',23);
select *from student;
alter table student modify Roll_NO int;
-- creating another table for course
create table studentCourse(Roll_No int ,course_id varchar(30) primary key);
describe studentCourse;
describe student;
insert into studentCourse values(1,'C101'),(2,'C102'),(4,'C103'),(5,'C104');
select Roll_No,name,course_id from student NATURAL JOIN studentCourse ;
