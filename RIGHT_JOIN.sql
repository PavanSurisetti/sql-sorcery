-- creating two tables for performing Right join
use db;
-- creating a table for student
create table student(Roll_No int primary key,name varchar(30),age int);
insert into student values(1,'Ram',20),(2,'Sam',21),(3,'John',22),(4,'Ravi',23);
select *from student;
-- creating another table for course
create table studentCourse(Roll_No int ,course_id varchar(30) primary key);
describe studentCourse;
insert into studentCourse values(1,'C101'),(2,'C102'),(4,'C103'),(5,'C104');
select student.Roll_No,student.name,studentCourse.course_id from student RIGHT JOIN studentCourse on student.Roll_No=studentCourse.Roll_No;